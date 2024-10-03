// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              const SizedBox(height: 20),

              const Text(
                "Welcome, caring friend!",
                style: TextStyle(fontSize: 28),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    textAlign: TextAlign.center,
                    "Verify your identity to register. Use student Id and phone number or Acess token.",
                    style: TextStyle(fontSize: 16)),
              ),

              const SizedBox(height: 10),

              // phone number field
              RefIdField(),

              // password field
              PhoneField(),

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
                        Navigator.pushNamed(context, '/reg-token');
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Use Access Token",
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
  } // widget build

  // phone textfield
  Widget RefIdField() {
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
          hintText: "Reference number",
          hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // password field
  Widget PhoneField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: passwordControlller,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.phone_android_outlined),
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
  } // password field ends
}
