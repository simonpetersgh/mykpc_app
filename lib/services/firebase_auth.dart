// # FIRESTORE AUTHSERVICE TO USE FOR ACCOUNT LOGIN AND REGISTER

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google SignIn method
  singInWithGoogle() async {
    // user account variable to hold the authenticated account
    final GoogleSignInAccount? gAccount = await GoogleSignIn().signIn();

    // store user account authenticated details
    final GoogleSignInAuthentication gAuth = await gAccount!.authentication;

    // create access token for the authenticated user
    final gUserCredential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // sign in the user using the access token
    await FirebaseAuth.instance.signInWithCredential(gUserCredential);
  }

  // sign up method with email and password

  // sign in method with email and password

  // sign out method
}
