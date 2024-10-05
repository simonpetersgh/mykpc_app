import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mykpc_app/firebase_options.dart';
import 'screens/auth/reg_with_access-token.dart';
import 'screens/activity/activity.dart';
import 'screens/auth/auth_logic.dart';
import 'screens/auth/login.dart';
import 'screens/auth/login_register.dart';
import 'screens/auth/register.dart';
import 'screens/chat/comm_chat.dart';
import 'screens/elections/elections.dart';
import 'screens/elections/vote.dart';
import 'screens/general/comm_chat0.dart';
import 'screens/main_page.dart';
import 'screens/notifications.dart';
import 'screens/podcasts.dart';

void main() async {
  // initialize firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // runApp
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
      // home: const AuthLogic(),
      debugShowCheckedModeBanner: false,
      // app routes
      routes: {
        "/": (ctx) => const AuthLogic(),
        "/loginRegister": (ctx) => const LoginOrRegister(),
        '/regTokenVerification': (context) => const RegisterWithAccessToken(),
        "/register": (ctx) => const Register(),
        "/login": (ctx) => const Login(),
        "/home": (ctx) => const HomePage(),
        "/commChat": (context) => const CommChat(),
        "/activity": (ctx) => const ActivityTab(),
        "/notifications": (context) => const Notifications(),
        "/chat0": (context) => const CommChatTab0(),
        "/podcasts": (ctx) => const PodcastsTab(),
        '/ec-center': (context) => const ElectionsLogin(),
        '/vote': (context) => const VotingPortal(),
      },
    );
  }
}
