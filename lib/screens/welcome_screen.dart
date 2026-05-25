// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset("assets/welcomimage.jfif", fit: BoxFit.cover),

          // Dark Overlay
          Container(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.7),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 90),

                Padding(
                  padding: const EdgeInsets.only(bottom: 35),

                  child: Image.asset(
                    "assets/logo.png",
                    width: 150,
                    height: 150,
                  ),
                ),

                const Text(
                  "Find Your Dream Car",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Luxury and sports cars in one place",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),

                const Spacer(),

                // Button
                Container(
                  width: double.infinity,
                  height: 60,

                  child: MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },

                    child: const Text(
                      "Explore Now",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
