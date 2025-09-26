import 'package:flutter/material.dart';
import 'package:smart_home/splash/view/onboarding_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingPage())
      );
    });
    return const Scaffold(
      body: Center(
        child:Text(
          'Smart Home',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }
}