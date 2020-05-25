import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

// Here is Login screen

class Login extends StatefulWidget {
  static String id = "login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'Assets/Asset2.png',
              scale: 10,
            ),
          ),
          TextField(),
          TextField(),
          RoundIconButton(
            text: "Login",
            func: null,
          ),
        ],
      ),
    );
  }
}
