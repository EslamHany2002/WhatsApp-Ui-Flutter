import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Chat/person.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          Person("assets/Images/eslam.png","Eslam Hany","5"),

          Person("assets/Images/1.jpg","Hany Mohamed","2"),

          Person("assets/Images/2.jpg","Omar ","3"),

          Person("assets/Images/3.jpg","Mazen Mohamed","10"),

          Person("assets/Images/4.jpg","Islam Hamza","2"),

          Person("assets/Images/5.jpg","Amr Yasser","4"),

          Person("assets/Images/6.jpg","Mostafa Adel","7"),

          Person("assets/Images/7.jpg","Yassen Magdy","9"),

          Person("assets/Images/8.jpg","Mohamed Adel","8"),

          Person("assets/Images/9.jpg","solom Mohamed","5"),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Color(0xFF075E55),
      ),
    );
  }
}
