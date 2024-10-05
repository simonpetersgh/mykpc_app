// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // vars
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  //METHODS
  // signin method
  void signInUser() async {
    // show signing in loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in with FirebaseAuth
    try {
      // if signin will work
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // stop loading circle signin succussful
      Navigator.pop(context);
      Navigator.pushReplacementNamed(context, '/home');
      // IF NOT, handle the EMAIL/PASSWORD ERROR
    } on FirebaseAuthException catch (e) {
      // stop loading circle when there's sign in error,
      //and show errror to user
      Navigator.pop(context);
      // WRONG EMAIL or PASSWORD
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        // show error to user
        errorMessage("Incorrect Email or Password");
      } else {
        errorMessage(e.code);
      }
    } // TRY END
  } // SIGN IN ENDS

  // ERROR MESSAGE ALERT BOX
  void errorMessage(String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 173, 229, 247),
          icon: const Icon(Icons.warning_amber_rounded),
          title: const Text('ERROR ALERT!'),
          actionsAlignment: MainAxisAlignment.center,
          content: Text(
              textAlign: TextAlign.center,
              "${errorMessage.toUpperCase()}\nTry again!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK',
                  style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.person, size: 100),

            const Text(
              "Welcome, caring friend!",
              style: TextStyle(fontSize: 28),
            ),

            const SizedBox(height: 20),

            const Text("Enter account credentials to login to MyKPC app.",
                style: TextStyle(fontSize: 16)),

            const SizedBox(height: 10),

            // phone number field
            EmailField(),

            // password field
            PasswordField(),

            const SizedBox(height: 10),

            // continue / login
            GestureDetector(
              onTap: () {
                signInUser();
              },
              child: Container(
                // width: MediaQuery.of(context).size.width / 2,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  } // build

  // email textfield
  Widget EmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: emailController,
        // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        // keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email_outlined),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "E m a i l",
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  } // email widget

  // password field
  Widget PasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: passwordController,
        obscureText: hidePassword,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "P a s s w o r d",
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          suffixIcon: IconButton(
            icon: hidePassword
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: () {
              hidePassword = !hidePassword;
              setState(() {
                hidePassword;
                // passwordConfirmation();
              });
            },
          ),
        ),
      ),
    );
  } // password field ends
} // build class

