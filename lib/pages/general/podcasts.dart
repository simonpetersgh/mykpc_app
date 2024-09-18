import 'package:flutter/material.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
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