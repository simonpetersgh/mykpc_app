import 'package:flutter/material.dart';

class PodcastsTab extends StatefulWidget {
  const PodcastsTab({super.key});

  @override
  State<PodcastsTab> createState() => _PodcastsTabState();
}

class _PodcastsTabState extends State<PodcastsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView(
          children: const [ 
            ListTile(title: Text("Title 1"), trailing: Icon(Icons.more_vert_outlined),)
          ],
        ),
      ),
    );
  }
}
