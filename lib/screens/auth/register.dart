// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // vars
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // show or hide password
  bool hidePassword = true;
  // password match
  bool passwordMatch = false;
  // late bool fieldError;

  // password confirmation
  void passwordConfirmation() {
    if (emailController.text.isEmpty) {
      passwordNotMatchingMessage = "Enter email";
      // fieldError = true;
    } else if (emailController.text.isNotEmpty) {
      // if both fields are not empty
      if (passwordController.text != "" &&
          confirmPasswordController.text != "") {
        if (passwordController.text == confirmPasswordController.text) {
          passwordMatch = true;
          passwordNotMatchingMessage = "Passwords match. Create account.";

        } else {
          passwordMatch = false;
          passwordNotMatchingMessage = "Passwords do not match. Resolve.";
        }
      } else {
        passwordNotMatchingMessage = "Confirm password";
      }
    } else {
      passwordNotMatchingMessage = "Enter email";
    }
    // logic test done, set states
    setState(() {
      passwordMatch;
      passwordNotMatchingMessage;
    });
  }

  // error messages
  String passwordNotMatchingMessage = "";

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
                    "Register an account with your email and password to continue.",
                    style: TextStyle(fontSize: 16)),
              ),

              const SizedBox(height: 10),
              // password do not match
              Text(
                passwordNotMatchingMessage,
                style:
                    TextStyle(color: passwordMatch ? Colors.green : Colors.red),
              ),

              // phone number field
              EmailField(),

              // password field
              PasswordField(),

              // confirm
              ConfirmPasswordField(),

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
              GestureDetector(
                onTap: () {
                  passwordConfirmation();
                  // after password check,
                  // register account if password match and email not empty
                  if (passwordMatch) {
                    registerUser();
                  }
                },
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: passwordMatch
                          ? Colors.green
                          : const Color.fromARGB(255, 172, 13, 2),
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
  } // widget build

  // phone textfield
  Widget EmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: TextField(
        controller: emailController,
        // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        // keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person_2_outlined),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "Email address",
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // password field
  Widget PasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
      child: TextField(
        controller: passwordController,
        obscureText: hidePassword,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.phone_android_outlined),
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

  // confirm password
  Widget ConfirmPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
      child: TextField(
        controller: confirmPasswordController,
        obscureText: hidePassword,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.phone_android_outlined),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "Confirm Password",
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
  } // confirm password field ends

  // ON CONTINUE CLICKED

  // REGISTER USER METHOD
  void registerUser() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try create account with FirebaseAuth
    try {
      if (emailController.text.isEmpty) {
        showErrorMessage('Email is required');
        return;
      } else {
        // TO DO IF EMAIL IS NOT EMPTY
        // check if passwords are same
        if (passwordController.text == confirmPasswordController.text) {
          // if creating account works
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          );
          // stop loading circle
          Navigator.pop(context);
          // show Registration Confirmation
          showRegistrationConfirmation();
        } else {
          // stop loading circle
          Navigator.pop(context);
          // show password mismatch error message
          showErrorMessage("Password's don't match");
        }
      }
      // IF NOT REGISTERED, handle the EMAIL ERROR
    } on FirebaseAuthException catch (e) {
      // stop loading circle and show error
      Navigator.pop(context);
      // show error message
      showErrorMessage('${e.code}. Try again!');
    }
  } // REGISTER USER METHOD ENDS

  // Error Message
  void showErrorMessage(String errorMessage) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(errorMessage),
        );
      },
    );
  }

  // Account Creation Confirmation
  void showRegistrationConfirmation() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Column(
              children: [
                const Text("Account created successfully."),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text("Log in")),
              ],
            ),
          ),
        );
      },
    );
  } // Account Creation Confirmation ends
  // ASSOCIATED METHODS END
}
