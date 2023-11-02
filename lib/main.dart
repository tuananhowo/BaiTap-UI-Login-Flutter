import 'package:flutter/material.dart';

import 'views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // first configuration
  void initState() {
    waitFiveSecond();
    super.initState();
  }

  // it logo time!!
  void waitFiveSecond() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EmailSingInScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF9747FF),
      body: Center(
        child: Text(
          'Clot',
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 60,
              fontWeight: FontWeight.w900,
              letterSpacing: 8),
        ), // The logo
      ),
    );
  }
}
