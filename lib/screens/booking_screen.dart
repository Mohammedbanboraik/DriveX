import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book Drive")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              maxLength: 30,
              decoration: const InputDecoration(labelText: "Name"),
            ),

            const SizedBox(height: 20),

            TextField(
              maxLength: 9,
              decoration: const InputDecoration(labelText: "Phone"),
            ),

            const SizedBox(height: 20),

            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Booking Confirmed")),
                );
              },
              child: const Text("Confirm"),
            ),
          ],
        ),
      ),
    );
  }
}
