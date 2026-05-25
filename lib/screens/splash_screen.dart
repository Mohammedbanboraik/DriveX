// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [
                const SizedBox(height: 140),

                Image.asset("assets/logo.png", width: 160, height: 160),

                const SizedBox(height: 25),

                const Text(
                  "DriveX",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Drive The Future",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),

                const Spacer(),

                // Loading Indicator
                const CircularProgressIndicator(color: Colors.blue),

                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
