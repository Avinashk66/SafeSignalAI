import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';

admin.initializeApp();
const db = admin.firestore();

export const onAlertCreated = functions.firestore.onDocumentCreated('alerts/{alertId}', async (event) => {
  const alert = event.data?.data();
  if (!alert) return;
  const nearby = await db.collection('users').where('geoHashPrefix', '==', alert.geoHashPrefix ?? '').limit(30).get();
  const tokens = nearby.docs.flatMap((doc) => (doc.data().fcmTokens || []) as string[]).filter(Boolean);
  if (tokens.length) {
    await admin.messaging().sendEachForMulticast({
      tokens,
      notification: {title: 'Emergency nearby', body: `${alert.type} detected near you`},
      data: {alertId: event.params.alertId, latitude: String(alert.latitude), longitude: String(alert.longitude)},
    });
  }
  await db.collection('alert_logs').add({alertId: event.params.alertId, responderCount: tokens.length, createdAt: admin.firestore.FieldValue.serverTimestamp()});
});

export const updateLocation = functions.https.onCall(async (request) => {
  if (!request.auth) throw new functions.https.HttpsError('unauthenticated', 'Authentication required');
  const { latitude, longitude } = request.data;
  await db.collection('users').doc(request.auth.uid).set({latestLocation: new admin.firestore.GeoPoint(latitude, longitude), lastSeenAt: admin.firestore.FieldValue.serverTimestamp()}, { merge: true });
  return { ok: true };
});
