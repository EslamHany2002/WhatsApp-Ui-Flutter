import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Chat/chat%20page.dart';

class Person extends StatelessWidget {
  var size,height,width;
  String x = "";
  String y = "";
  String z = "";
  Person(this.x,this.y,this.z);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return FlatButton(
      child: Row(
        children: [
          SizedBox(
            height: 70,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
              x,
            ),
            radius: 26,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                y,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "If you wanna anything call me",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            width: width*0.130,
          ),
          Column(
            children: [
              Text("9.11 PM"),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 22,
                decoration: BoxDecoration(
                  color: Color(0xFF075E55),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  z,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
        ],
      ),
      onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>ChatPage()));},
    );
  }
}
