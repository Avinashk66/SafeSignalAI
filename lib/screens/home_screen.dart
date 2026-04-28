import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'countdown_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _triggerSimulatedAlert(BuildContext context, String type) {
    context.read<AppState>().setAlertState(true);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CountdownScreen(alertType: type),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(title: const Text('SafeSignal AI')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const PulsingShield(),
            const SizedBox(height: 40),
            Text(
              state.isAlertActive ? 'ALERT ACTIVE' : 'System Active & Monitoring',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: state.isAlertActive ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            SwitchListTile(
              title: const Text('Voice Detection'),
              subtitle: const Text('Detects panic or distress keywords'),
              value: state.voiceDetection,
              onChanged: (val) => context.read<AppState>().toggleVoiceDetection(val),
              secondary: const Icon(Icons.mic),
            ),
            SwitchListTile(
              title: const Text('Fall Detection'),
              subtitle: const Text('Monitors abnormal motion patterns'),
              value: state.fallDetection,
              onChanged: (val) => context.read<AppState>().toggleFallDetection(val),
              secondary: const Icon(Icons.directions_run),
            ),
            const Spacer(),
            const Text('Simulate AI Detection (Demo)', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () => _triggerSimulatedAlert(context, 'Voice Panic'),
                  child: const Text('Voice Panic'),
                ),
                ElevatedButton(
                  onPressed: () => _triggerSimulatedAlert(context, 'Sudden Fall'),
                  child: const Text('Sudden Fall'),
                ),
                ElevatedButton(
                  onPressed: () => _triggerSimulatedAlert(context, 'Abnormal Motion'),
                  child: const Text('Motion Spike'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                  onPressed: () => _triggerSimulatedAlert(context, 'Manual SOS'),
                  child: const Text('Manual SOS', style: TextStyle(color: Colors.white)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// lib/widgets/pulsing_shield.dart
class PulsingShield extends StatefulWidget {
  const PulsingShield({super.key});

  @override
  State<PulsingShield> createState() => _PulsingShieldState();
}

class _PulsingShieldState extends State<PulsingShield> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 0.95, end: 1.05).animate(_controller),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(0.1),
          border: Border.all(color: Colors.blueAccent, width: 2),
        ),
        child: const Icon(
          Icons.health_and_safety,
          size: 80,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}