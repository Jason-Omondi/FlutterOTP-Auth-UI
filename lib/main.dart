import 'package:test_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/onboarding_screen.dart';


void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  LoginApp({super.key});

  @override //decorator or marker
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage()
    );
  }
}