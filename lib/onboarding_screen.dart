import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //stops: (0.1, 0.4, 0.7, 0.8),
            colors: [
              Color(0xFF359400),
              Color(0xFF456308),
              Color(0xFF583605),
              Color(0xFF583605)
            ]

          )
        ),
      ),
    );
  }
}