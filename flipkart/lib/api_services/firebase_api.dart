import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseApi {
  FirebaseApi._();

  static FirebaseApi instance = FirebaseApi._();

  Future<User?> signUp(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      log(credential.user.toString());
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
  
  Future<User?> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      log(credential.user.toString());
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
