import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.read<AppState>().setAlertState(false);
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Icon(Icons.check_circle, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              'Emergency Services Notified',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on, color: Colors.redAccent),
                  SizedBox(width: 8),
                  Text('Lat: 34.0522  |  Lng: -118.2437', style: TextStyle(fontFamily: 'monospace')),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Notified Contacts:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(child: Text('D')),
                    title: Text('Dad'),
                    trailing: Chip(
                      label: Text('Sent', style: TextStyle(color: Colors.white, fontSize: 12)),
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(child: Text('S')),
                    title: Text('Sarah (Sister)'),
                    trailing: Chip(
                      label: Text('Sent', style: TextStyle(color: Colors.white, fontSize: 12)),
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.redAccent, child: Icon(Icons.local_hospital, color: Colors.white)),
                    title: Text('Local 911 Dispatch'),
                    trailing: Chip(
                      label: Text('Sent', style: TextStyle(color: Colors.white, fontSize: 12)),
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}