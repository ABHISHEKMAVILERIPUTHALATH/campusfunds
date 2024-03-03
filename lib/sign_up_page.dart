import 'package:campusfunds/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.pop(context);
                },
              )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Colors.black45, width: 1)),
              hintText: "Full Name",
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
              hintText: "Your Password",
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
              hintText: "Confirm Password",
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
              backgroundColor: const Color(0xFFc25d51),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SIGN UP',
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
                const SizedBox(width: 5.0), // Add spacing between text and icon
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
                "Already have an accound?",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                width: 70,
              ),
              GestureDetector(
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 17, 17, 158)),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Scaffold(
                          backgroundColor: Color(0xFFEFEFEF),
                          body: LoginPage())));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
