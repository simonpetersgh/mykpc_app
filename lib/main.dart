import 'package:flutter/material.dart';
import 'package:mykpc_app/pages/comm_chat.dart';
import 'package:mykpc_app/pages/elections/vote.dart';
import 'package:mykpc_app/pages/main_page.dart';


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
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
        // app routes
        routes: {
          "/chat": (context) => const CommChatTab(),
          '/ec-portal': (context) => const VotingPortal(),
          '/vote': (context) => const VotingPortal(),
        });
  }
}
