import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Utilities/boolWidget.dart';
import 'package:healthyshield/Utilities/constants.dart';

class ContinueUserReq extends StatefulWidget {
  static String id = "continueReq";

  @override
  _ContinueUserReqState createState() => _ContinueUserReqState();
}

class _ContinueUserReqState extends State<ContinueUserReq> {
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
                    decoration: kBirthDateTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kJobTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kMIncomeTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kNoOfDepTextFieldStyle,
                    onChanged: null,
                  ),
                ),
                BoolWidget(
                  firstChoiceColor: Colors.white,
                  secondChoiceColor: Colors.white,
                  title: 'Gender',
                  firstIcon: FontAwesomeIcons.female,
                  secondIcon: FontAwesomeIcons.male,
                  firstText: 'Female',
                  secondText: 'Male',
                  firstChoiceDo: () {
                    print("1");
                  },
                  secondChoiceDo: () {
                    print("2");
                  },
                ),
                BoolWidget(
                  firstChoiceColor: Colors.white,
                  secondChoiceColor: Colors.white,
                  title: 'Cut Of Legs',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    print("1");
                  },
                  secondChoiceDo: () {
                    print("2");
                  },
                ),
                BoolWidget(
                  firstChoiceColor: Colors.white,
                  secondChoiceColor: Colors.white,
                  title: 'Cut Of arms',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    print("1");
                  },
                  secondChoiceDo: () {
                    print("2");
                  },
                ),
                BoolWidget(
                  firstChoiceColor: Colors.white,
                  secondChoiceColor: Colors.white,
                  title: 'Chronic Disease',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    print("1");
                  },
                  secondChoiceDo: () {
                    print("2");
                  },
                )
              ],
              //Barcode screen
            ),
          ),
        ),
      ),
    );
  }
}
