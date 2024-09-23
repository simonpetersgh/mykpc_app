import 'package:flutter/material.dart';
import 'package:mykpc_app/screens/comm_chat.dart';
import 'package:mykpc_app/screens/elections/elections.dart';
import 'package:mykpc_app/screens/elections/vote.dart';
import 'package:mykpc_app/screens/general/comm_chat0.dart';
import 'package:mykpc_app/screens/podcasts.dart';
import 'package:mykpc_app/screens/home.dart';
import 'package:mykpc_app/screens/main_page.dart';
import 'package:mykpc_app/screens/notifications.dart';

import 'screens/activity.dart';

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
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 243, 3, 3)),
          useMaterial3: true,
        ),
        // home: const HomePage(),
        debugShowCheckedModeBanner: false,
        // app routes
        routes: {
          "/": (ctx) => const HomePage(),
          "/home": (ctx) => const HomeTab(),
          "/commChat": (context) => const CommChat(),
          "/activity": (ctx) => const ActivityTab(),
          "/notifications": (context) => const Notifications(),
          "/chat0": (context) => const CommChatTab0(),
          "/podcasts": (ctx) => const PodcastsTab(),
          '/ec-center': (context) => const ElectionsLogin(),
          '/vote': (context) => const VotingPortal(),
        });
  }
}
