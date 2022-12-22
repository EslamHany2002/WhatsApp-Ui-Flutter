import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          leadingWidth: 35,
          title: Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/Images/eslam.png",
                ),
                radius: 20,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eslam Hany",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: Colors.white,fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                onPressed: (){},

                icon: Icon(Icons.videocam)
            ),
            IconButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                onPressed: (){},
                icon: Icon(Icons.phone)
            ),
            PopupMenuButton(
                padding: EdgeInsets.symmetric(vertical: 18),
                iconSize: 28,
                itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          "View contact",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "Media, links, and docs",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Mute noftifications",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Disappearing messages",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Wallpaper",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "More",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF3C2),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Text(
                    "Messages and calls are end-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: width,
        height: 65,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width*0.49,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 19,
                      ),
                      decoration: InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attachment_outlined,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.black38,
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF075E55),
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.mic,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
