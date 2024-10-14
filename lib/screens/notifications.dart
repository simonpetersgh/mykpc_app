import 'package:flutter/material.dart';
import 'package:mykpc_app/constants.dart';

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
            onPressed: () {
              setState(() {
                notificationsOn = !notificationsOn;
              });
            },
            hoverColor: Colors.grey,
            icon: notificationsOn
                ? const Icon(
                    Icons.toggle_on,
                    color: Colors.green,
                  )
                : const Icon(Icons.toggle_off_outlined),
          )
        ],
      ),

      // body
      body: ListView(
        children: [
          // notification info
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
                "Stay in the loop whenever there is a message, a mention, reply and other important updates."),
          ),
          // button
          TextButton(
            onPressed: () {
              setState(() {
                notificationsOn = !notificationsOn;
              });
            },
            child: notificationsOn
                ? const Text("Turn off alerts")
                : const Text("Enable notifications"),
          ),
          const Divider(),
          const SizedBox(height: 10),

          Row(
            children: [
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
              TextButton(
                onPressed: () {},
                child: const Text("Clear all"),
              )
            ],
          ),

          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Alert title"),
            subtitle: const Text("Info about alert, or type of alert"),
            trailing:
                IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
            contentPadding: const EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }

  // notification box
}
