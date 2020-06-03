import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

class ChangingPassword extends StatefulWidget {
  static String id = "ChangingPassword";

  @override
  _ChangingPasswordState createState() => _ChangingPasswordState();
}

class _ChangingPasswordState extends State<ChangingPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changing Passowrd'),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: kPaddingValue,
              child: Text(
                'Fill the Fields To change your Password',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: TextField(
                style: Theme.of(context).textTheme.subtitle1,
                decoration: kCurrentPassTextFieldStyle,
                onChanged: null,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: TextField(
                style: Theme.of(context).textTheme.subtitle1,
                decoration: kPasswordTextFieldStyle,
                onChanged: null,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: TextField(
                style: Theme.of(context).textTheme.subtitle1,
                decoration: kCPasswordTextFieldStyle,
                onChanged: null,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                text: "Submit",
                func: () {
                  Navigator.pop(context);
                },
                height: 55.0,
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
