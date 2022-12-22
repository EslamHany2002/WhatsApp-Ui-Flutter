import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/eslam.png",
                  ),
                  radius: 32,
                ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eslam Hany ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "if you want to do anything ,y...",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Icon(Icons.qr_code,color: Color(0xFF075E55),size: 30,),
            ],
          ),
          SizedBox(height: 5,),
          Center(
            child: SizedBox(
              width: 250,
              child: Expanded(
                  child: Divider(
                    thickness: 0.2,
                    color: Colors.black,
                  )),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.key,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Privacy, security, change number",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Themes, wallpapers, chat history",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Message, group & call tones",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Storage and data",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Network, usage, auto-download",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "App language",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "English (phone's language)",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Help center, contact us, privacy policy",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.grey[700],
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
