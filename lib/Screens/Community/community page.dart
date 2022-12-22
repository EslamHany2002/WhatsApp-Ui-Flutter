import 'package:flutter/material.dart';

class Community extends StatelessWidget
{
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Container(
            width: width,
            height: height*0.1,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: width*0.045,
                ),
                Container(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.groups,size: 33,color: Colors.white,),
                        // backgroundImage: const AssetImage(
                        //   "assets/eslam.png",
                        // ),
                        backgroundColor: Colors.grey,
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
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.035,),
                    const Text(
                      "New community ",
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            height: height*0.29,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: height*0.012,),
                Row(
                  children: [
                    SizedBox(
                      width: width*0.045,

                    ),
                    Container(width: width*0.14,height: height*0.072,child: Image.asset("assets/Images/RTS.jpeg"),color: Colors.white,),

                    SizedBox(
                      width: width*0.045,
                    ),
                    const Text("RTS",style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  height: height*0.012,
                ),
                Row(
                  children: [
                    SizedBox(width: width*0.05,),
                    const CircleAvatar(
                      child: Icon(Icons.notifications,size: 30,color: Color(0xFF075E55),),
                      backgroundColor: Color(0xFFA5D6A7),
                      // backgroundImage: ,
                      radius: 26,
                    ),
                    SizedBox(width: width*0.045,),
                    Text("New group added",style: TextStyle(fontWeight: FontWeight.w400),)
                  ],
                ),
                SizedBox(
                  height: height*0.025,
                ),
                Row(
                  children: [
                    SizedBox(width: width*0.05,),
                    const CircleAvatar(
                      child: Icon(Icons.announcement_outlined,size: 30,color: Color(0xFF075E55),),
                      backgroundColor: Color(0xFFA5D6A7),
                      // backgroundImage: ,
                      radius: 26,
                    ),
                    SizedBox(width: width*0.045,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Group name",
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "+20 106 400 6082: hi.....",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width*0.175,
                    ),
                    Column(
                      children: [
                        Text("Yesterday"),
                        SizedBox(
                          height: 5,
                        ),

                      ],
                    ),
                  ],
                ),


              ],
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            height: height,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}