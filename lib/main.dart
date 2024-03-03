import 'package:campusfunds/login_page.dart';
import 'package:campusfunds/sign_up_page.dart';
import 'package:campusfunds/splash_screen.dart';
// import 'package:campusfunds/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Splash(),
    ));
  }
}
