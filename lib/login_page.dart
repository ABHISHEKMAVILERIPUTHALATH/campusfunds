import 'package:campusfunds/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
            ),
            const Text(
              "Sign in",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.black45, width: 1)),
                hintText: "abc@email.com",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.black45, width: 1)),
                hintText: "Your password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = false;
                    });
                  },
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "forgot password?",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 17, 17, 158),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press action here
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: const Color(0xFFc25d51),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  SizedBox(width: 10.0), // Add spacing between text and icon
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "OR",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(170, 25, 24, 24)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press action here
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://i.stack.imgur.com/aZqAl.png",
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Login with google',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  const SizedBox(
                      width: 5.0), // Add spacing between text and icon
                  // google logo image add
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Don't have an accound?",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 70,
                ),
                GestureDetector(
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 17, 17, 158)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const Scaffold(
                            backgroundColor: Color(0xFFEFEFEF),
                            body: SignUpPage())));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
