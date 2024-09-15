import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mykpc_app/pages/home.dart';

// import './comm_chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // my Menu Drawer
      drawer: const Drawer(),

      // my app bar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 36, 36),
        foregroundColor: Colors.white,
        title: const Text("MyKPC App"),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.person)
            ),
          )
        ],
      ),

      // main body
      body: const HomeTab(),

      // bottom Nav bar
      bottomNavigationBar: GNav(
          padding: const EdgeInsets.all(12),
          color: Colors.red,
          backgroundColor: Colors.black12,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.red,
          gap: 8,
          tabs: [
            const GButton(
              icon: Icons.home,
              text: "Home",
              semanticLabel: "Opinions",
            ),
            GButton(
              onPressed: () {
                Navigator.pushNamed(context, "/chat");
              },
              icon: Icons.chat_bubble_outline,
              text: "Chat",
              semanticLabel: "Opinions",
            ),
            const GButton(
              icon: Icons.podcasts_rounded,
              text: "Podcasts",
            ),
          ]),
    );
  }
}
