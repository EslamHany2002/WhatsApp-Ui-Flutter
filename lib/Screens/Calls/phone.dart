import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  var size, height, width;
  String x = "";
  String y = "";
  Call(this.x, this.y);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return Row(
      children: [
        SizedBox(
          width: 15,
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
              height: 3,
            ),
            Row(
              children: [
                Icon(
                  Icons.call_made,
                  color: Color(0xFF075E55),
                  ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "October 12, 10:20 PM",
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: width * 0.22,
        ),
        Icon(
          Icons.phone,
          color: Color(0xFF075E55),
        ),
      ],
    );
  }
}
