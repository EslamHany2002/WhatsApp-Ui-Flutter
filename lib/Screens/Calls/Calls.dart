import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Calls/phone.dart';
import 'package:whats_app/Screens/Calls/video.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Call("assets/Images/eslam.png", "Eslam Hany"),
          const SizedBox(
            height: 20,
          ),
          Video("assets/Images/6.jpg", "Mostafa Adel"),
          const SizedBox(
            height: 20,
          ),
          Call("assets/Images/2.jpg", "Omar "),
          const SizedBox(
            height: 20,
          ),
          Video("assets/Images/7.jpg", "Yassen Magdy"),
          const SizedBox(
            height: 20,
          ),
          Call("assets/Images/3.jpg", "Mazen Mohamed"),
          const SizedBox(
            height: 20,
          ),
          Video("assets/Images/8.jpg", "Mohamed Adel"),
          const SizedBox(
            height: 20,
          ),
          Call("assets/Images/4.jpg", "Islam Hamza"),
          const SizedBox(
            height: 20,
          ),
          Video("assets/Images/9.jpg", "solom Mohamed"),
          const SizedBox(
            height: 20,
          ),
          Call("assets/Images/5.jpg", "Amr Yasser"),
          const SizedBox(
            height: 20,
          ),
          Video("assets/Images/1.jpg", "Hany Mohamed"),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E55),
        child: const Icon(Icons.add_ic_call),
      ),
    );
  }
}
