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
            icon: const Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_present),
          )
        ],
      ),
      // body
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // messages
            ListView(),

            // message box
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.emoji_emotions)),
                          Expanded(
                            child: TextFormField(
                              maxLines: 7,
                              minLines: 1,
                              autofocus: true,
                              initialValue: "Hi",
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.attach_file_outlined)),
                        ],
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.send))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
