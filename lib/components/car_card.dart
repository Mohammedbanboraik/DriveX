import 'package:flutter/material.dart';
import '../models/car_model.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),

              child: Image.asset(
                car.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            car.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          const SizedBox(height: 5),

          Text(
            car.price,
            style: const TextStyle(color: Colors.blue, fontSize: 16),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
