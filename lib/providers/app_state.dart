import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  bool isAlertActive = false;
  bool voiceDetection = true;
  bool fallDetection = true;

  void toggleVoiceDetection(bool value) {
    voiceDetection = value;
    notifyListeners();
  }

  void toggleFallDetection(bool value) {
    fallDetection = value;
    notifyListeners();
  }

  void setAlertState(bool isActive) {
    isAlertActive = isActive;
    notifyListeners();
  }
}