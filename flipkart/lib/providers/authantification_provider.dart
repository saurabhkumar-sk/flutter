import 'dart:developer';

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _email;
  // String? get email => _email;
  // set setEmail(String? val) => _email = val;

  // String? _password;
  // String? get password => _password;
  // set setPassword(String pass) => _password = pass;

  // void login() {
  //   log(email ?? 'email');
  //   log(password ?? 'password');

  void login(String email, String password) {
    if (_email == null) {
      return;
    }
    log(email);
    log(password);
  }
}
