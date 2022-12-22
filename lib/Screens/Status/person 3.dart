import 'package:flutter/material.dart';

class HasStatus extends StatelessWidget
{
  String x="";
  String y="";
  HasStatus(this.x,this.y);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.green,width: 3),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(x,),
            radius:  26,
          ),
        ),

        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(y, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("22 minutes ago",style: TextStyle(color: Colors.black87),),
          ],
        ),

      ],
    );
  }
}

class HasNotStatus extends StatelessWidget
{
  String x="";
  String y="";
  HasNotStatus(this.x,this.y);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey,width: 3),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(x,),
            radius:  26,
          ),
        ),

        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(y, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("yesterday, 10:33 PM",style: TextStyle(color: Colors.black87),),
          ],
        ),

      ],
    );
  }
}