import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// google nav bar
// ignore: non_constant_identifier_names
Widget GBottonNavBar() {
  return GNav(
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
            // Navigator.pushNamed(context, "/chat");
          },
          icon: Icons.chat_bubble_outline,
          text: "Chat",
          semanticLabel: "Opinions",
        ),
        const GButton(
          icon: Icons.podcasts_rounded,
          text: "Podcasts",
        ),
      ]);
}

// default bottom nav bar
Widget bottomNavBar() {
  return BottomNavigationBar(
    // currentIndex: navTabIndex,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble_outline_rounded),
        label: "Comm Chat",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.newspaper_outlined),
        label: "Activity",
      ),
    ],
  );
}
