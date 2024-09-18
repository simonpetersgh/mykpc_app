import 'package:flutter/material.dart';
import 'package:mykpc_app/keystates.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  void initState() {
    // Initializing States
    notificationsOn;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Push notifications"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: notificationsOn
                ? const Icon(Icons.notifications_active_outlined)
                : const Icon(Icons.notifications_off_outlined),
          )
        ],
      ),

      // body
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Expanded(
                      child: Text(
                          "Stay in the loop whenever there is a message, a mention/reply and other important updates."),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          notificationsOn = !notificationsOn;
                        });
                      },
                      child: notificationsOn
                          ? const Text("Turn off alerts")
                          : const Text("Ebable notifications"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
