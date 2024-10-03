// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // vars
  TextEditingController phoneNumberControlller = TextEditingController();
  TextEditingController passwordControlller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              PhoneField(),

              // password field
              PasswordField(),

              const SizedBox(height: 10),

              // continue / login
              Container(
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
            ],
          ),
        ),
      ),
    );
  } // build

  // phone textfield
  Widget PhoneField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: phoneNumberControlller,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person_2_outlined),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "Phone number",
          hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // password field
  Widget PasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: passwordControlller,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock_outline),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "P a s s w o r d",
          hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  } // password field ends
} // build class




// phone textfield input validation

// void _validatePhoneNumber() {
//   final String phoneNumber = phoneNumberControlller.text;
//   if (phoneNumber.isEmpty || phoneNumber.length < 10) {
//     // show error message or perform necessary actions
//   } else {
//     // continue with the login process
//   }
// }

// login button click event

// void _login() {
//   _validatePhoneNumber(); // validate phone number first

//   if (phoneNumberControlller.text.isEmpty || passwordControlller.text.isEmpty) {
//     // show error message or perform necessary actions
//   } else {
//     // perform login process
//   }
// }