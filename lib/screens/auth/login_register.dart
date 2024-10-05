import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // lock icon
                const Icon(Icons.lock_outline, size: 100),
                const SizedBox(height: 20),
                // welcome
                const Text(
                  "Welcome to MyKPC App",
                  style: TextStyle(fontSize: 28),
                ),
                // image banner
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/kpc-23-acc.jpg"),
                ),

                const SizedBox(height: 10),
                // login or register text
                const Text(
                  "Login or register an account to access The KPC We Want community for updates",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                // buttons row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: LoginButton()),
                    GestureDetector(
                        onTap: () {
                          // user to enter a given token to access register screen
                          // when verified
                          Navigator.pushNamed(context, '/regTokenVerification');
                        },
                        child: RegisterButton()),
                  ],
                ),

                // support contact
                const SizedBox(height: 10),
                const Text(
                  "Facing any issues? Contact support via 0208985999 for assistance",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  } // build method ends
  // inside class

  // #LoginButton
  // ignore: non_constant_identifier_names
  Widget LoginButton() {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color.fromARGB(255, 150, 11, 1),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: const Center(
        child: Text("Login",
            style: TextStyle(
                color: Color.fromARGB(255, 148, 11, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  // #REGISTER BUTTON
  // ignore: non_constant_identifier_names
  Widget RegisterButton() {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 190, 15, 2),
          borderRadius: BorderRadius.circular(5)),
      child: const Center(
        child: Text("Register",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
