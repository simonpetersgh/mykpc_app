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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Messages',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          // Community Chat
          ListTile(
            // group chat
            leading: const CircleAvatar(
              child: Text('GC'),
            ),
            title: const Text('Community Chat'),
            onTap: () {
              // Navigate to a group chat screen
              Navigator.pushNamed(context, '/commChat');
            },
          ),
          const SizedBox(height: 10),
          // Inbox
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Inbox", style: TextStyle(fontSize: 16)),
          ),
          // contacts/persons/chat
          ListTile(
            leading: const CircleAvatar(
              child: Text('C'),
            ),
            title: const Text('Person 1'),
            onTap: () {
              // Navigate to a group chat screen
              Navigator.pushNamed(context, '/commChat');
            },
          )
        ],
      ),
    );
  }
}
