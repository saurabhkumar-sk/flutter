import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseApi {
  FirebaseApi._();

  static FirebaseApi instance = FirebaseApi._();

  User? user;

  //SignUP
  Future<User?> signUp(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      log(credential.user.toString());
      user = credential.user;

      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  //Login
  Future<User?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      log(credential.user.toString());
      user = credential.user;

      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }


//Google Login

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  


}
