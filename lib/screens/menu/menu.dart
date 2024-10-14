// Create class with following menu items
// #Announcements

// #Podcasts
// #Media
// #Constitution
// #Executives & Reps
// KPC Calendar
// Settings
// About MyKPC app

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../general/calender.dart';
import '../general/kpc_constitution.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  // CURRENT AUTHENTICATED USER REF
  // current User
  final user = FirebaseAuth.instance.currentUser!;

  //  LOGOUT METHOD
  // // signUser Out menthod
  void signUserOut() {
    FirebaseAuth.instance.signOut();
    debugPrint('User just signed out!!');
    Navigator.pushReplacementNamed(context, '/'); // close the current page
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // header with user profile
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              // backgroundImage: AssetImage('assets/images/SimonGREEN.jpg'),
              child: Text(user.email![0].toUpperCase(),
                  style: const TextStyle(fontSize: 50)),
            ),
            accountName: const Text("Hii, caring friend"),
            // pick first character of email for profile photo icon
            // initials
            // "${user.email.split('@')[0].toUpperCase().substring(0, 2)}",

            accountEmail: Text("${user.email}"),
            otherAccountsPictures: [
              // edit profile
              IconButton(
                  onPressed: () {},
                  hoverColor: Colors.grey,
                  icon: const Icon(Icons.edit_outlined, color: Colors.white)),

              // settings
              IconButton(
                onPressed: () {},
                hoverColor: Colors.grey,
                icon: const Icon(Icons.settings, color: Colors.white),
              ),
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
            leading: const Icon(Icons.podcasts_outlined),
            title: const Text('Podcasts'),
            onTap: () {},
          ),

          // media menu item
          ListTile(
            leading: const Icon(Icons.photo_library_sharp),
            title: const Text('Photo Gallery'),
            onTap: () {},
          ),

          // constitution menu item
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Constitution'),
            onTap: () {
              // close menu view
              // Navigator.pop(context);
              // and show kpc constitution viewer screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConstitutionViewer()));
            },
          ),

          // KPC calendar menu item
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('KPC Calendar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CalendarViewer()));
            },
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
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/ec-center');
            },
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
          // ListTile(
          //   leading: const Icon(Icons.question_mark_outlined),
          //   title: const Text('Help and Support'),
          //   onTap: () {},
          // ),

          // const Spacer(), was causin rendering issue

          const Divider(),

          // logout button with text "Sign Out"
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                signUserOut();
              },
              // iconbutton style for a background color
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromARGB(255, 165, 13, 2)),
                foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  Text(
                    'Log out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
