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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container: Welcome text with image
          // Welcome back, / Good morning'afternoon'evening
          // caring friend
          const Text(
            "Welcome, caring friend",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          // Add Banner Asset Image
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                candidateBox("img234", "mykpc/post123"),
                candidateBox("img234", "mykpc/post123"),
                candidateBox("img234", "mykpc/post123"),
              ],
            ),
          ),

          const SizedBox(height: 10.0),

          // Announcements sliders,
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Announcements",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                child: Text(""),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),

          const SizedBox(height: 10.0),

          // Upcoming Programs
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Upcoming Programs",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                child: Text(""),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),

          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  } // idget build method ends

  // featured box

  Widget candidateBox(String imageUrl, String postUrl) {
    return GestureDetector(
      onTap: () {},

      // Widget
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 240,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 0, 121, 21),
              ),
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            children: [
              // image
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  "assets/images/kpc-23-acc.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } // featured box ends

  // widget build state class
}

// Announcement Box
// ignore: non_constant_identifier_names
Widget AnnoucementBox() {
  return Container(
    width: 100,
    height: 50,
    color: Colors.blue,
  );
}
