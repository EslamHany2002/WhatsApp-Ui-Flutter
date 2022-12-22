import 'package:flutter/material.dart';
import 'package:whats_app/Screens/Chat/Chats.dart';
import 'package:whats_app/Screens/Community/community%20page.dart';
import 'package:whats_app/Screens/Status/Status.dart';
import 'package:whats_app/Setting/setting.dart';
import '../Screens/Calls/Calls.dart';

class HomePage extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                ),
              ),
              SizedBox(
                width: width * 0.03,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
                  }
                },
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked devices",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: width,
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 15,
                    child: const Tab(
                      icon: Icon(Icons.groups),
                    ),
                  ),
                  Container(
                    width: 75,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("Chats"),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              "20",
                              style: TextStyle(
                                  color: Color(0xFF075E55), fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 75,
                    child: const Tab(
                      child: Text("Status"),
                    ),
                  ),
                  Container(
                    width: 75,
                    child: const Tab(
                      child: Text("Calls"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  Community(),
                  Chats(),
                  Status(),
                  Calls(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
