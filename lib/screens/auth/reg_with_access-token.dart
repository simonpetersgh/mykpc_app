import 'package:flutter/material.dart';
import 'package:mykpc_app/keystates.dart';

class RegisterWithAccessToken extends StatefulWidget {
  const RegisterWithAccessToken({super.key});

  @override
  State<RegisterWithAccessToken> createState() =>
      _RegisterWithAccessTokenState();
}

class _RegisterWithAccessTokenState extends State<RegisterWithAccessToken> {
  // vars
  TextEditingController tokenControlller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.person, size: 100),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Enter access token to continue",
                  style: TextStyle(fontSize: 28),
                ),
              ),

              const SizedBox(height: 10),

              // token field

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: TextField(
                  controller: tokenControlller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key_outlined),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "A c c e s s  T o k e n",
                    hintStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // not working? use token button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not working?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Use Ref. Number and Phone",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // continue / register
              GestureDetector(
                onTap: () {
                  if (tokenControlller.text == memberAcessToken) {
                    Navigator.pushReplacementNamed(context, "/signup");
                  }
                },
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text("Continue",
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
    );
  }
}
