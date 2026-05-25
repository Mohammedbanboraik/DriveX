import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const SizedBox(height: 20),

              // Profile Image
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 3),
                ),

                child: const CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 60, color: Colors.white),
                ),
              ),

              const SizedBox(height: 20),

              // User Name
              const Text(
                "Mohammed Khaled",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "DriveX Premium Member",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),

              const SizedBox(height: 30),

              // Stats Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildStatCard("12", "Cars", Icons.directions_car),

                  buildStatCard("5", "Bookings", Icons.calendar_today),
                ],
              ),

              const SizedBox(height: 35),

              // Menu Items
              buildMenuItem(icon: Icons.car_rental, title: "My Bookings"),

              buildMenuItem(icon: Icons.info_outline, title: "About DriveX"),

              buildMenuItem(
                icon: Icons.logout,
                title: "Logout",
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Stats Card
  Widget buildStatCard(String number, String title, IconData icon) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Icon(icon, color: Colors.blue, size: 30),

          const SizedBox(height: 10),

          Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 15),
          ),
        ],
      ),
    );
  }

  // Menu Item
  Widget buildMenuItem({
    required IconData icon,
    required String title,
    Color color = Colors.white,
  }) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),

        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(18),
        ),

        child: ListTile(
          leading: Icon(icon, color: color),

          title: Text(title, style: TextStyle(color: color, fontSize: 17)),

          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
            size: 18,
          ),
        ),
      ),
    );
  }
}
