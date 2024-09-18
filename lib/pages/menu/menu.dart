// Create class with following menu items
// #Announcements

// #Podcasts
// #Media
// #Constitution
// #Executives & Reps
// KPC Calendar
// Settings
// About MyKPC app

import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // header with user profile
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/SimonGREEN.jpg'),
            ),
            accountName: const Text("Caring friend"),
            accountEmail: const Text("example@.email.com"),
            otherAccountsPictures: [
              IconButton(
                onPressed: () {},
                hoverColor: Colors.white,
                icon: const Icon(Icons.settings),
              )
            ],
          ),

          // other user profile with #ListTile
          // ListTile(
          //   leading: const CircleAvatar(
          //     radius: 20,
          //     backgroundImage: AssetImage('assets/images/kpc-23-acc.jpg'),
          //   ),
          //   title: const Text('User Profile'),
          //   onTap: () {},
          // ),

          // home item
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          // Podcasts menu item
          // REMOVED FOR NOW

          ListTile(
            leading: const Icon(Icons.announcement_outlined),
            title: const Text('Announcements'),
            onTap: () {},
          ),

          // media menu item
          ListTile(
            leading: const Icon(Icons.library_music),
            title: const Text('Media'),
            onTap: () {},
          ),

          // constitution menu item
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Constitution'),
            onTap: () {},
          ),

          // KPC calendar menu item
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('KPC Calendar'),
            onTap: () {},
          ),

          // executive & rep menu item
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Executives & Reps'),
            onTap: () {},
          ),

          // Elections Center menu item
          ListTile(
            leading: const Icon(Icons.check_box_outlined),
            title: const Text('Election Center'),
            onTap: () {},
          ),

          // settings menu item: MOVED TO HEADER

          // about mykpc app menu item
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About MyKPC App'),
            onTap: () {},
          ),

          // divider widget to separate each menu item

          // settings menu item
          ListTile(
            leading: const Icon(Icons.question_mark_outlined),
            title: const Text('Help and Support'),
            onTap: () {},
          ),

          const Divider(),

          // logout button with text "Sign Out"
          ElevatedButton(
            onPressed: () {},
            child: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}
