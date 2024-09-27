import 'package:flutter/material.dart';

class ElectionsLogin extends StatefulWidget {
  const ElectionsLogin({super.key});

  @override
  State<ElectionsLogin> createState() => _ElectionsLoginState();
}

class _ElectionsLoginState extends State<ElectionsLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Elections Center"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/voting.png",
                  width: 100,
                ),
                // const SizedBox(height: 20),

                const SizedBox(height: 20),

                const Text(
                  "KPC ELECTIONS PORTAL",
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 20),

                // guide
                const Text(
                  "Verify your eligibilty to continue",
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 20),

                // username
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                      decoration: InputDecoration(
                    prefix: Icon((Icons.person)),
                    label: Text("Username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    labelStyle: TextStyle(
                        fontSize: 20, color: Color.fromARGB(225, 2, 169, 167)),
                  )),
                ),

                // pincode
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.lock),
                        label: Text("Pincode"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(225, 2, 169, 167)),
                      )),
                ),

                // verify button

                GestureDetector(
                  onTap: () {
                    debugPrint("clicked verify btn");
                    Navigator.pushReplacementNamed(context, '/vote');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text("Verify now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
