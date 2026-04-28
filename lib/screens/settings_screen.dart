import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _voiceSensitivity = 0.7;
  double _fallSensitivity = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('AI Sensitivity Configuration', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          const Text('Voice Recognition Sensitivity'),
          Slider(
            value: _voiceSensitivity,
            activeColor: Colors.blueAccent,
            onChanged: (val) => setState(() => _voiceSensitivity = val),
          ),
          const Text('Fall Detection Sensitivity'),
          Slider(
            value: _fallSensitivity,
            activeColor: Colors.orangeAccent,
            onChanged: (val) => setState(() => _fallSensitivity = val),
          ),
          const Divider(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Emergency Contacts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add'),
              )
            ],
          ),
          ListTile(
            leading: const CircleAvatar(child: Text('D')),
            title: const Text('Dad'),
            subtitle: const Text('+1 555-0192'),
            trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.grey), onPressed: () {}),
          ),
          ListTile(
            leading: const CircleAvatar(child: Text('S')),
            title: const Text('Sarah (Sister)'),
            subtitle: const Text('+1 555-0193'),
            trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.grey), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}