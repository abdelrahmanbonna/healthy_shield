import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

class Report extends StatelessWidget {
  static String id = 'report';

  @override
  Widget build(BuildContext context) {
    return BarScreen(
      navBar: AppBar(
        title: Text(
          'Report',
          style: Theme.of(context)
              .textTheme
              .headline1
              .merge(TextStyle(color: Colors.white)),
        ),
      ),
      mainOfScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: kPaddingValue,
            child: TextField(
              maxLines: 10,
              decoration: kReportTextFieldStyle,
            ),
          ),
          RoundIconButton(
            height: 40,
            //TODO: add function
            func: () {
              Navigator.pushNamed(context, MainLayout.id);
            },
            text: 'Submit',
          )
        ],
      ),
    );
  }
}
