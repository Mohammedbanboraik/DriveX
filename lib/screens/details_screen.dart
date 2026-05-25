import 'package:drivex/screens/booking_screen.dart';
import 'package:flutter/material.dart';
import '../models/car_model.dart';

class DetailsScreen extends StatelessWidget {
  final Car car;

  const DetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name), backgroundColor: Colors.black),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(car.image),

            const SizedBox(height: 20),

            Text(
              car.name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              car.price,
              style: const TextStyle(fontSize: 25, color: Colors.blue),
            ),

            const SizedBox(height: 20),

            ListTile(leading: const Icon(Icons.speed), title: Text(car.speed)),

            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(car.engine),
            ),

            const SizedBox(height: 20),

            MaterialButton(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookingScreen(),
                  ),
                );
              },
              child: const Text(
                "Book  Drive",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
