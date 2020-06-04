import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Screens/UsersRegistartion.dart';
import 'package:healthyshield/Screens/forgetpass.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

import 'about.dart';
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: SizedBox()),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, About.id);
                      },
                      child: Icon(
                        FontAwesomeIcons.info,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 40,
                ),
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, Loading.id, (Route<dynamic> route) => false);
                    },
                    height: 35.0,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: RoundIconButton(
                    text: "Register",
                    func: () {
                      Navigator.pushNamed(context, UsersRegistration.id);
                    },
                    height: 35.0,
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
