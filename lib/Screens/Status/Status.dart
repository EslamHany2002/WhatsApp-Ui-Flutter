import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Status/person%203.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.grey,width: 3),
                ),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/Images/eslam.png",
                      ),
                      radius: 26,
                    ),
                    Positioned(
                      bottom: 0,
                      right:0,
                      child: Container(
                        height: 20,
                        width: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF075E55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.add,color: Colors.white,size: 17,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Status ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Top to add status update",
                    style: TextStyle(color: Colors.black54,fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text('Recent updates',style: TextStyle(fontSize: 15,color: Colors.black54),),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          HasStatus("assets/Images/1.jpg","Hany Mohamed"),
          SizedBox(height: 15,),
          HasStatus("assets/Images/2.jpg","Omar "),
          SizedBox(height: 15,),
          HasStatus("assets/Images/3.jpg","Mazen Mohamed"),
          SizedBox(height: 15,),
          HasStatus("assets/Images/4.jpg","Islam Hamza"),
          SizedBox(height: 15,),
          HasStatus("assets/Images/5.jpg","Amr Yasser"),
          SizedBox(height: 15,),

          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text('Viewed updates',style: TextStyle(fontSize: 15,color: Colors.black54),),
            ],
          ),
          SizedBox(height: 15,),

          HasNotStatus("assets/Images/6.jpg","Mostafa Adel"),
          SizedBox(height: 15,),
          HasNotStatus("assets/Images/7.jpg","Yassen Magdy"),
          SizedBox(height: 15,),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.photo_camera_rounded),
        backgroundColor: Color(0xFF075E55),
      ),
    );
  }
}
