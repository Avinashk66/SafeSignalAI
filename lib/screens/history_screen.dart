import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mockHistory = [
      {'date': 'Today, 2:45 PM', 'type': 'Voice Trigger', 'status': 'Cancelled'},
      {'date': 'Yesterday, 9:10 AM', 'type': 'Fall Detected', 'status': 'Alert Sent'},
      {'date': 'Oct 12, 11:30 PM', 'type': 'Manual SOS', 'status': 'Alert Sent'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Alert History')),
      body: ListView.separated(
        itemCount: mockHistory.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final item = mockHistory[index];
          final isSent = item['status'] == 'Alert Sent';

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: isSent ? Colors.redAccent.withOpacity(0.2) : Colors.grey.withOpacity(0.2),
              child: Icon(
                isSent ? Icons.warning : Icons.cancel,
                color: isSent ? Colors.redAccent : Colors.grey,
              ),
            ),
            title: Text(item['type']!),
            subtitle: Text(item['date']!),
            trailing: Text(
              item['status']!,
              style: TextStyle(
                color: isSent ? Colors.redAccent : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}