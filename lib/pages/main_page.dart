import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mykpc_app/keystates.dart';
import 'package:mykpc_app/pages/home.dart';
import 'package:mykpc_app/pages/menu/menu.dart';

// import './comm_chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // Implementing initState
    notificationsOn;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // my Menu Drawer
      drawer: const Drawer(
        child: MyMenu(),
      ),

      // my app bar
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/notifications');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: notificationsOn
                  ? const Icon(Icons.notifications_active_outlined)
                  : const Icon(Icons.notifications_off_outlined),
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
