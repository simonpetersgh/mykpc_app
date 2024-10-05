import 'package:flutter/material.dart';
// import 'package:mykpc_app/constants.dart';

class RegisterWithAccessToken extends StatefulWidget {
  const RegisterWithAccessToken({super.key});

  @override
  State<RegisterWithAccessToken> createState() =>
      _RegisterWithAccessTokenState();
}

class _RegisterWithAccessTokenState extends State<RegisterWithAccessToken> {
  // vars
  // access token
  String accessToken = "kpc.2024.25";
  // token textfield controller
  TextEditingController tokenController = TextEditingController();
  // token verified to be used for ui logic
  bool tokenVerified = false;
  // button text
  String buttonText = "Verify now";
  Color buttonColor = Colors.black;
  // if false, button should show verify text,
  // if verified true, button should show continue >> to register page

  // verify function
  void verifyToken() {
    // verify token and set verification status
    if (tokenController.text.isEmpty) {
      buttonText = "No token entered";
    } else {
      // NOT EMPTY? DO....
      if (tokenController.text == accessToken) {
        tokenVerified = true;
        buttonText = "Continue";
        buttonColor = Colors.green;
      } else {
        tokenVerified = false;
        buttonText = "Incorrect token";
        buttonColor = Colors.red;
      }
    }
    // verification done
    // set state for new values
    setState(() {
      tokenVerified;
      buttonText;
      buttonColor;
    });
  }

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
                  controller: tokenController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key_outlined),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: "Enter token",
                    hintStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

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
                          "Contact an executive member for assistance.",
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
                  // verifyToken();
                  if (tokenVerified) {
                    Navigator.pushReplacementNamed(context, "/register");
                  } else {
                    verifyToken();
                  }
                },
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(buttonText,
                        style: const TextStyle(
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
