// home tab screen

import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container: Welcome text with image
          // Welcome back, / Good morning'afternoon'evening
          // caring friend
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.grey,
            decoration: BoxDecoration(
//  to add image here
            ),
            child: Column(
              children: [
                Text(
                  "Welcome, caring friend",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Add Banner Asset Image


              ],
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          // Announcements sliders,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Announcements",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Text(""),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),

          SizedBox(
            height: 10.0,
          ),

          // Upcoming Programs
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Upcoming Programs",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: Text(""),
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

// Announcement Box
Widget AnnoucementBox() {
  return Container(
    width: 100,
    height: 50,
    color: Colors.blue,

  );
}
