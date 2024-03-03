import 'package:campusfunds/login_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const Scaffold(
                backgroundColor: Color(0xFFEFEFEF), body: LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 400,
              width: 400,
              child: Image.asset('assets/images/logo.png')),
          RichText(
              text: const TextSpan(
                  text: "CAMPUS",
                  style: TextStyle(
                      color: Color(0xFF1F4850),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 5),
                  children: [
                TextSpan(
                    text: "CONNECT",
                    style: TextStyle(
                        color: Color(0xFFC35E54),
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        decorationThickness: 5))
              ])),
        ],
      ),
    );
  }
}
