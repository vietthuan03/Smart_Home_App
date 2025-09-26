import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/splash/view/splash_page.dart';

void main() {
  runApp(const SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily, // set font mặc định
      ),
      home: const SplashPage(),
      routes: { 
        '/login': (_) => const Scaffold(body: Center(child: Text('Login Page'))),
      },
    );
  }
}
