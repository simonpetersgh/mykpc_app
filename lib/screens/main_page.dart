// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:mykpc_app/constants.dart';
import 'package:mykpc_app/screens/chat/chats.dart';
import 'package:mykpc_app/screens/menu/menu.dart';
import 'package:mykpc_app/screens/home.dart';
import 'package:mykpc_app/screens/activity/activity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // tab values
  int currentTabIndex = 0;
  // Tabs Array
  final myTabs = [
    const HomeTab(),
    const ActivityTab(),
    const ChatTab(),
    // const PodcastsTab(),
  ];

  @override
  void initState() {
    // Implementing initState
    notificationsOn;
    currentTabIndex;
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
        elevation: 0,
        title: const Text('Caring friends'),
        // centerTitle: true,
        actions: [
          // add post
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          // anonymous chat button removed
          // SENT TO HOME PAGE GREETING'S ROW
          // notifications iButton
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
      body: myTabs[currentTabIndex],

      // floating action chat
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/chat');
      //   },
      //   foregroundColor: Colors.white,
      //   backgroundColor: const Color.fromARGB(255, 70, 20, 2),
      //   child: const Icon(Icons.telegram_outlined, size: 50.0),
      // ),

      // default navbar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        // selectedIconTheme: IconThemeData(),
        onTap: (newIndex) {
          setState(() {
            currentTabIndex = newIndex;
            print(newIndex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tag_rounded),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outlined),
            label: "Inbox",
          ),
        ],
      ),
    );
  }
}
