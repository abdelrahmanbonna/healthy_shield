import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

// Here is the forget password screen
class ForgetPass extends StatelessWidget {
  static String id = "forget";

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
            child: Image.asset(
              'Assets/Asset2.png',
              scale: 10,
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
            child: RoundIconButton(
              text: "Submit",
              func: () {
                Navigator.pop(context);
              },
              height: 40.0,
            ),
          ),
        ],
      )),
    )));
  }
}
