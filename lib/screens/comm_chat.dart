import 'package:flutter/material.dart';

class CommChat extends StatefulWidget {
  const CommChat({super.key});

  @override
  State<CommChat> createState() => _CommChatState();
}

class _CommChatState extends State<CommChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community Chat"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      // body
    );
  }
}
