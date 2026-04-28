# SafeSignal AI 🛡️

<div align="center">

**Intelligent Emergency Response & Real-time Safety Monitoring**

[![GitHub stars](https://img.shields.io/github/stars/Avinashk66/SafeSignalAI?style=social)](https://github.com/Avinashk66/SafeSignalAI)
[![GitHub forks](https://img.shields.io/github/forks/Avinashk66/SafeSignalAI?style=social)](https://github.com/Avinashk66/SafeSignalAI)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Status](https://img.shields.io/badge/status-Active-brightgreen)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Key Features](#-key-features)
- [Tech Stack](#️-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Installation](#-installation)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [Contributors](#-contributors)

---

## 🎯 Overview

**SafeSignal AI** is a production-ready Flutter application designed to act as a silent guardian for individuals in vulnerable situations. By combining advanced mobile sensor data with Google Gemini AI context analysis, SafeSignal AI provides intelligent emergency response capabilities with minimal user interaction.

This application is particularly valuable for:
- Elderly individuals living alone
- People with mobility challenges
- Workers in high-risk environments
- Vulnerable populations requiring discreet safety monitoring

**Key Statistics:**
- 📱 Multi-platform support (iOS, Android)
- 🤖 AI-powered threat detection
- ⏱️ 15-second safety buffer to prevent false alarms
- 📍 Real-time GPS tracking
- 🔐 Secure local data storage

---

## 🚀 Key Features

### 🎤 Voice Distress Detection
Actively monitors for panic-stricken keywords or distress phrases to trigger alerts hands-free. Supports natural language processing to identify genuine emergencies while filtering background noise.

### 📊 Smart Fall Analysis
Uses the device's accelerometer and gyroscope to detect sudden falls or abnormal motion patterns with high accuracy. Machine learning models continuously improve detection accuracy.

### 🧠 Gemini AI Contextualization
Leverages Google Gemini AI to analyze situational data (audio/motion) to reduce false alarms and provide emergency dispatchers with better context about the incident type and severity.

### ⏲️ 15-Second Safety Buffer
Features a high-visibility countdown overlay allowing users to cancel accidental triggers before SOS signals are dispatched. Prevents unnecessary emergency service deployment.

### 🚨 Automated SOS & Tracking
Instantly notifies emergency services and pre-defined contacts with:
- Real-time GPS coordinates
- Incident type and severity
- Audio/sensor data context
- User medical information (optional)

### 📊 Alert History & Logs
Maintains a secure local history of all safety incidents, triggers, and cancellations with detailed timestamped logs for future reference and pattern analysis.

---

## 🛠️ Tech Stack

### Frontend & Mobile
- **Framework:** [Flutter](https://flutter.dev/) - Multi-platform mobile development (iOS/Android)
- **State Management:** [Provider](https://pub.dev/packages/provider) - Real-time UI synchronization and alert states
- **UI Components:** Material Design 3 with custom animations

### AI & Machine Learning
- **AI Integration:** [Google Gemini AI](https://ai.google.dev/) - Contextual situational analysis
- **Audio Processing:** Advanced speech recognition and keyword detection
- **Sensor Analysis:** Motion pattern recognition algorithms

### Backend & Infrastructure
- **Architecture:** Built to scale with MERN stack (MongoDB, Express, React, Node.js)
- **Cloud Platform:** Microsoft Azure integration
- **Database:** Secure local storage with cloud sync capabilities
- **APIs:** RESTful APIs for emergency dispatch integration

### Development Tools
- **Version Control:** Git/GitHub
- **CI/CD:** GitHub Actions (planned)
- **Testing:** Unit testing with Mockito
- **Code Quality:** Analysis with Dart Analyzer

### Language Composition
```
C++        35.7%  (Native modules, performance-critical code)
Dart       28.5%  (Flutter application code)
CMake      27.3%  (Build configuration)
Swift      2.5%   (iOS-specific implementations)
TypeScript 2.0%   (Backend/API)
C          2.0%   (System-level operations)
Other      2.0%   (Configuration files)
```

---

## 📂 Project Structure

```
SafeSignalAI/
├── lib/
│   ├── main.dart                      # Entry point & app initialization
│   ├── app_theme.dart                 # Global theme configuration
│   ├── providers/
│   │   ├── app_state.dart            # Central state management
│   │   ├── alert_provider.dart       # Alert handling logic
│   │   ├── location_provider.dart    # GPS tracking
│   │   └── settings_provider.dart    # User preferences
│   ├── screens/
│   │   ├── home_screen.dart          # Main dashboard
│   │   ├── history_screen.dart       # Alert history & logs
│   │   ├── settings_screen.dart      # Configuration & preferences
│   │   ├── sos_screen.dart           # Emergency response UI
│   │   └── onboarding_screen.dart    # First-time setup
│   ├── widgets/
│   │   ├── pulsing_animation.dart    # Animated alert indicators
│   │   ├── countdown_overlay.dart    # Safety buffer countdown
│   │   ├── sos_button.dart           # Emergency trigger button
│   │   └── custom_widgets.dart       # Reusable UI components
│   ├── models/
│   │   ├── alert_model.dart          # Data structures for alerts
│   │   ├── contact_model.dart        # Emergency contacts
│   │   └── location_model.dart       # Location data
│   ├── services/
│   │   ├── ai_service.dart           # Gemini AI integration
│   │   ├── location_service.dart     # GPS & geolocation
│   │   ├── audio_service.dart        # Speech processing
│   │   ├── notification_service.dart # Push notifications
│   │   └── storage_service.dart      # Local data persistence
│   └── utils/
│       ├── constants.dart            # App-wide constants
│       ├── helpers.dart              # Utility functions
│       └── extensions.dart           # Dart extensions
├── android/                           # Android-specific code
├── ios/                              # iOS-specific code
├── test/                             # Unit & widget tests
├── pubspec.yaml                      # Flutter dependencies
├── pubspec.lock                      # Dependency lock file
└── README.md                         # This file
```

---

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (v3.16.0 or higher) - [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (included with Flutter)
- **Git** - [Installation Guide](https://git-scm.com/)
- **Android Studio** or **Xcode** (for platform-specific development)
- **Google Gemini API Key** - [Get API Key](https://ai.google.dev/)

### System Requirements

| Platform | Minimum | Recommended |
|----------|---------|-------------|
| **iOS** | iOS 13.0 | iOS 15.0+ |
| **Android** | API 21 | API 31+ |
| **RAM** | 2GB | 4GB+ |
| **Storage** | 100MB | 500MB+ |

---

## 📥 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Avinashk66/SafeSignalAI.git
cd SafeSignalAI
```

### 2. Install Flutter Dependencies

```bash
flutter pub get
```

### 3. Configure API Keys

Create a `.env` file in the root directory:

```env
GEMINI_API_KEY=your_gemini_api_key_here
BACKEND_URL=your_backend_url
```

**Never commit API keys to version control!**

### 4. Run the Application

#### For Android:
```bash
flutter run -d android
```

#### For iOS:
```bash
flutter run -d ios
```

#### For Specific Device:
```bash
flutter devices                    # List connected devices
flutter run -d <device_id>         # Run on specific device
```

---

## 💻 Usage

### First Launch

1. **Grant Permissions:** The app requires:
   - 📍 Location (GPS) access
   - 🎤 Microphone access
   - 📱 Phone calls/SMS capability
   - 📱 Device motion sensors

2. **Emergency Contacts Setup:**
   - Add primary emergency contact
   - Add secondary contacts
   - Configure emergency services number

3. **Personalization:**
   - Set custom distress keywords
   - Configure alert thresholds
   - Choose notification preferences

### During Operation

**Monitoring Status:**
- Green indicator = All systems operational
- Yellow indicator = Reduced functionality
- Red indicator = Critical issues requiring attention

**Triggering SOS:**
1. **Voice:** Say a distress keyword (e.g., "Help," "Emergency")
2. **Fall Detection:** Automatically triggered on detected fall
3. **Manual:** Long-press SOS button for 3 seconds
4. **Device Gesture:** Configurable shake pattern

**Safety Buffer:**
- 15-second countdown appears after trigger
- Tap "Cancel" to prevent alert dispatch
- Tap "Confirm" to immediately notify contacts

### Accessing History

1. Navigate to **History** tab
2. View timestamped list of all alerts
3. Filter by date, type, or status
4. Export logs for medical/legal purposes

---

## 🏗️ Architecture

### Layered Architecture

```
┌─────────────────────────────────────┐
│       UI Layer (Screens/Widgets)    │
├─────────────────────────────────────┤
│    State Management (Provider)      │
├─────────────────────────────────────┤
│     Services (AI, Location, etc)    │
├─────────────────────────────────────┤
│   Data Layer (Local Storage, APIs)  │
├─────────────────────────────────────┤
│  Native Layer (Sensors, Permissions)│
└─────────────────────────────────────┘
```

### Data Flow

```
Sensor Input → Processing → AI Analysis → Decision
    ↓             ↓             ↓            ↓
 Motion       Algorithm    Context       Alert
 Audio        Detection    Evaluation    Trigger
```

### Security Measures

- ✅ End-to-end encryption for location data
- ✅ Secure local storage with AES-256
- ✅ OAuth 2.0 for API authentication
- ✅ HIPAA-compliant data handling
- ✅ No tracking of non-emergency data
- ✅ Regular security audits

---

## 🤝 Contributing

We welcome contributions from the community! Please follow these guidelines:

### How to Contribute

1. **Fork the Repository**
   ```bash
   git clone https://github.com/Avinashk66/SafeSignalAI.git
   cd SafeSignalAI
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/AmazingFeature
   ```

3. **Make Your Changes**
   - Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
   - Write unit tests for new features
   - Update documentation

4. **Commit Your Changes**
   ```bash
   git commit -m 'Add some AmazingFeature'
   ```

5. **Push to Your Fork**
   ```bash
   git push origin feature/AmazingFeature
   ```

6. **Open a Pull Request**
   - Provide detailed description
   - Link related issues
   - Include screenshots/videos if UI changes

### Code Style

```dart
// Follow these conventions:
// - Use meaningful variable names
// - Add documentation comments
// - Keep functions focused and small
// - Write testable code
```

### Testing Requirements

- Unit test coverage ≥ 80%
- Widget tests for UI changes
- Integration tests for critical flows

---

## 👥 Contributors

- [Vinesh2007](https://github.com/Vinesh2007)
- [Avinashk66](https://github.com/Avinashk66)
- [sabarirajan83](https://github.com/sabarirajan83)
- [BarathiShankar](https://github.com/BarathiShankar)
---

## ❤️ Acknowledgments

- **Google Gemini AI** - For intelligent context analysis
- **Flutter Team** - For the amazing cross-platform framework
- **Open Source Community** - For invaluable libraries and tools
- **Our Users & Contributors** - For feedback and support

---

## 📞 Contact

- **Issues:** [SafeSignalAI Issues](https://github.com/Avinashk66/SafeSignalAI/issues)
- **Discussions:** [SafeSignalAI Discussions](https://github.com/Avinashk66/SafeSignalAI/discussions)

---

<div align="center">

⭐ If you find this project helpful, please consider starring it! ⭐

</div>
