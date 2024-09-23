import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Inbox & Messages'),
            // Chats
            ListTile(
              // group chat
              leading: const CircleAvatar(
                child: Text('GC'),
              ),
              title: const Text('Group Chat'),
              onTap: () {
                // Navigate to a group chat screen
                Navigator.pushNamed(context, '/commChat');
              },
            )
          ],
        ),
      ),
    );
  }
}
