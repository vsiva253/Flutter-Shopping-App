import 'package:appp/home_page.dart';
import 'package:appp/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Widget determineInitialScreen() {
  if (FirebaseAuth.instance.currentUser != null) {
    return HomePage();
  } else {
    return LoginPage();
  }
}
