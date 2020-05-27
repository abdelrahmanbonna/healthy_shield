import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/forgetpass.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

import 'loading.dart';

// Here is Login screen

class Login extends StatefulWidget {
  static String id = "login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Assets/Assetbackground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'Assets/Asset2.png',
                      scale: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: Text(
                    'Welcome, Please login !',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kEmailTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: 'X',
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kPasswordTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ForgetPass.id);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: RoundIconButton(
                    text: "Login",
                    func: () {
                      Navigator.pushNamed(context, Loading.id);
                    },
                    height: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
