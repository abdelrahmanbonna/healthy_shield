import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

class UsersRegistartion extends StatefulWidget {
  static String id = "userReg";

  @override
  _UsersRegistartionState createState() => _UsersRegistartionState();
}

class _UsersRegistartionState extends State<UsersRegistartion> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/Assetbackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
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
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kFNameTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kLNameTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kEmaillTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kPhoneNoTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kAddressTextFieldStyle,
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
                Padding(
                  padding: kPaddingValue,
                  child: RoundIconButton(
                    text: "Submit",
                    func: () {
                      Navigator.pushNamed(context, Login.id);
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
