import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/constants.dart';

class About extends StatelessWidget {
  static String id = 'about';

  @override
  Widget build(BuildContext context) {
    return BarScreen(
      navBar: AppBar(
        title: Text(
          'About',
          style: Theme.of(context)
              .textTheme
              .headline1
              .merge(TextStyle(color: Colors.white)),
        ),
      ),
      mainOfScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: kPaddingValue,
            child: Image.asset(
              'Assets/Asset2.png',
              scale: 8,
            ),
          ),
          Center(
            child: Text(
              'Insurance',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Text(
            "We provide health insurance for everyone.\n"
            "Team:\n"
            "Abdelrahman Bonna\n"
            "Sarah Hatem\n"
            "Micheal Emad\n"
            "Emad Roshdy\n"
            "Beshoy Refaat\n",
            maxLines: 50,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
