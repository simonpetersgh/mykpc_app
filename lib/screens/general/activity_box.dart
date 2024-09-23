// 2 activity boxes,
// one for summary view,
// one for more view

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ActivitySummaryBox(String title, String message, String imageUrl,
    String dateTime, String user) {
  // Widget
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          // post info section
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  child: Text("P"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(user),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(dateTime),
              ),
            ],
          ),

          // post/activity title
          Text(title,
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.bold)),

          // image section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              imageUrl,
            ),
          ),

          // body / message section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(children: [
              Text(
                message,
              ),
            ]),
          ),

          // reaction section
          Row(children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
            const Spacer(),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
          ])
        ],
      ),
    ),
  );
}
