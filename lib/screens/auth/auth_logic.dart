// # TO CHECK IF USER IS LOGGED IN OR NOT
// # AND WHICH SCREEN TO SHOW

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mykpc_app/screens/auth/login_register.dart';

import '../main_page.dart';

class AuthLogic extends StatefulWidget {
  const AuthLogic({super.key});

  @override
  State<AuthLogic> createState() => _AuthLogicState();
}

class _AuthLogicState extends State<AuthLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          // if user is logged in, i.e. snapshot has data
          if (snapshot.hasData) {
            debugPrint("User is signed in");
            return const HomePage();
          } else {
            // if user is not logged in, i.e. snapshot does not have data
            // show login or register page
            debugPrint("No signed in user");
            return const LoginOrRegister();
          }
        }),
      ),
    );
  }
}
