import 'package:flutter/material.dart';

class Video extends StatelessWidget
{
  var size,height,width;
  String x = "";
  String y = "";
  Video(this.x,this.y);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return Row(
      children: [
        SizedBox(width: 15,),

        CircleAvatar(
          backgroundImage: AssetImage(x,),
          radius:  26,
        ),

        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(y, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            SizedBox(height: 3,),
            Row(
              children: [
                Icon(Icons.call_received,color: Colors.red,),
                SizedBox(width: 5,),
                Text("October 12, 10:20 PM",style: TextStyle(color: Colors.black87),),
              ],
            ),
          ],
        ),
        SizedBox(width:width*0.22,),
        Icon(Icons.videocam,color: Color(0xFF075E55),),
      ],
    );
  }
}