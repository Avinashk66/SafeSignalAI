import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'sent_screen.dart';

class CountdownScreen extends StatefulWidget {
  final String alertType;
  const CountdownScreen({super.key, required this.alertType});

  @override
  State<CountdownScreen> createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> with SingleTickerProviderStateMixin {
  late AnimationController _timerController;
  int _countdown = 15;

  @override
  void initState() {
    super.initState();
    _timerController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..addListener(() {
      setState(() {
        _countdown = 15 - (_timerController.value * 15).floor();
      });
    })..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _navigateToSent();
      }
    });
    _timerController.forward();
  }

  void _navigateToSent() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SentScreen()),
    );
  }

  void _cancelAlert() {
    _timerController.stop();
    context.read<AppState>().setAlertState(false);
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _timerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.warning_amber_rounded, size: 80, color: Colors.orangeAccent),
            const SizedBox(height: 20),
            Text(
              '${widget.alertType} Detected',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    value: 1.0 - _timerController.value,
                    strokeWidth: 10,
                    color: Colors.redAccent,
                    backgroundColor: Colors.white24,
                  ),
                ),
                Text(
                  '$_countdown',
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2, color: Colors.blueAccent),
                ),
                SizedBox(width: 10),
                Text(
                  'Gemini AI is analyzing context...',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: _cancelAlert,
              child: const Text('I am Safe (Cancel)', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}