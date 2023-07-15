import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  const firebaseConfig = FirebaseOptions(
      apiKey: "AIzaSyDyw9tYXZOyy65mp-HKI8KmMCzQbw3A8os",
      authDomain: "flashchat-4f048.firebaseapp.com",
      projectId: "flashchat-4f048",
      storageBucket: "flashchat-4f048.appspot.com",
      messagingSenderId: "480997873797",
      appId: "1:480997873797:web:76cf3252b7b2932d07b1ec",
      measurementId: "G-NJ0Z0T3NXS");
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'WelcomeScreen.id', routes: {
      'WelcomeScreen.id': (context) => WelcomeScreen(),
      'LoginScreen.id': (context) => LoginScreen(),
      'RegistrationScreen.id': (context) => RegistrationScreen(),
      'ChatScreen.id': (context) => ChatScreen(),
    });
  }
}
