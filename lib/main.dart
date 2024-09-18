import 'package:flutter/material.dart';
import 'package:mykpc_app/pages/comm_chat.dart';
import 'package:mykpc_app/pages/elections/elections.dart';
import 'package:mykpc_app/pages/elections/vote.dart';
import 'package:mykpc_app/pages/general/podcasts.dart';
import 'package:mykpc_app/pages/main_page.dart';
import 'package:mykpc_app/pages/notifications.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyKPC App',
        theme: ThemeData(
          fontFamily: 'Roboto',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const HomePage(),
        debugShowCheckedModeBanner: false,
        // app routes
        routes: {
          "/": (ctx) => const HomePage(),
          "/chat": (context) => const CommChatTab(),
          "/podcasts": (ctx) => const Podcasts(),
          "/notifications": (context) => const Notifications(),
          '/ec-center': (context) => const ElectionsLogin(),
          '/vote': (context) => const VotingPortal(),
        });
  }
}
