import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnonymousChat extends StatefulWidget {
  const AnonymousChat({super.key});

  @override
  State<AnonymousChat> createState() => _AnonymousChatState();
}

class _AnonymousChatState extends State<AnonymousChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                // pop context
                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.back)),
          title: const Text("Anonymous Space"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  // pop context
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.info)),
          ]),
    );
  }
}
