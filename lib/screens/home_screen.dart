import 'package:flutter/material.dart';
import '../models/car_model.dart';
import '../components/car_card.dart';
import 'details_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Car> cars = [
      Car(
        name: "Tesla Model S",
        image: "assets/teslaimage.jfif",
        price: "\$ 80,000",
        speed: "250 km/h",
        engine: "Electric",
      ),

      Car(
        name: "BMW M4",
        image: "assets/BMWimage.jfif",
        price: "\$ 70,000",
        speed: "240 km/h",
        engine: "Twin Turbo",
      ),

      Car(
        name: "Lamborghini",
        image: "assets/LamboImage.jfif",
        price: "\$ 120,000",
        speed: "320 km/h",
        engine: "V12",
      ),

      Car(
        name: "Mercedes AMG",
        image: "assets/Marimage.jfif",
        price: "\$ 95,000",
        speed: "280 km/h",
        engine: "AMG Turbo",
      ),
      Car(
        name: "Audi R8",
        image: "assets/audiimage.jfif",
        price: "\$ 150,000",
        speed: "330 km/h",
        engine: "V10",
      ),
      Car(
        name: "Porsche 911 Carrera",
        image: "assets/proshimage.jfif",
        price: "\$ 130,000",
        speed: "310 km/h",
        engine: "Flat-6 Turbo",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset("assets/logo.png", width: 40),

            const SizedBox(width: 10),

            const Text("DriveX"),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: GridView.builder(
          itemCount: cars.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(car: cars[index]),
                  ),
                );
              },

              child: CarCard(car: cars[index]),
            );
          },
        ),
      ),
    );
  }
}
