import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Utilities/boolWidget.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/dropmenu.dart';
import 'package:provider/provider.dart';

class ContinueUserReq extends StatefulWidget {
  static String id = "continueReq";

  @override
  _ContinueUserReqState createState() => _ContinueUserReqState();
}

class _ContinueUserReqState extends State<ContinueUserReq> {
  String carsNo,
      job,
      carModel,
      mobileFees,
      bloodType,
      gender,
      lostArm,
      lostLeg,
      income,
      dependencies,
      bD,
      chronicDisease,
      height,
      weight;

  Color male = Colors.white,
      female = Colors.white,
      yes0 = Colors.white,
      no0 = Colors.white,
      yes1 = Colors.white,
      no1 = Colors.white,
      yes2 = Colors.white,
      no2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.backward),
            title: Text('Back'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.save),
            title: Text('Submit'),
          )
        ],
        onTap: (index) {
          if (index == 1) {
            Provider.of<UserData>(context, listen: false).continueReg(
                context,
                gender,
                dependencies,
                carsNo,
                carModel,
                bD,
                height,
                weight,
                income,
                lostLeg,
                lostArm,
                chronicDisease,
                mobileFees,
                job,
                bloodType);
            Navigator.of(context)
                .pushNamedAndRemoveUntil(Login.id, (route) => false);
          } else {
            Navigator.of(context).pop();
          }
        },
      ),
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
                    onChanged: (value) {
                      setState(() {
                        bD = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kHeightTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kWeightTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kMIncomeTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        income = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kNoOfDepTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        dependencies = value;
                      });
                    },
                  ),
                ),
                BoolWidget(
                  firstChoiceColor: male,
                  secondChoiceColor: female,
                  title: 'Choose your Gender',
                  firstIcon: FontAwesomeIcons.male,
                  secondIcon: FontAwesomeIcons.female,
                  firstText: 'Male',
                  secondText: 'Female',
                  firstChoiceDo: () {
                    setState(() {
                      gender = 'male';
                      male = Colors.amber;
                      female = Colors.white;
                    });
                  },
                  secondChoiceDo: () {
                    setState(() {
                      gender = 'female';
                      female = Colors.greenAccent;
                      male = Colors.white;
                    });
                  },
                ),
                BoolWidget(
                  firstChoiceColor: yes0,
                  secondChoiceColor: no0,
                  title: 'Do you have Cut Of Legs',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    setState(() {
                      lostLeg = 'yes';
                      yes0 = Colors.greenAccent;
                      no0 = Colors.white;
                    });
                  },
                  secondChoiceDo: () {
                    setState(() {
                      lostLeg = 'no';
                      yes0 = Colors.white;
                      no0 = Colors.redAccent;
                    });
                  },
                ),
                BoolWidget(
                  firstChoiceColor: yes1,
                  secondChoiceColor: no1,
                  title: 'Do you have Cut Of arms',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    setState(() {
                      lostArm = 'yes';
                      yes1 = Colors.greenAccent;
                      no1 = Colors.white;
                    });
                  },
                  secondChoiceDo: () {
                    setState(() {
                      lostArm = 'no';
                      yes1 = Colors.white;
                      no1 = Colors.redAccent;
                    });
                  },
                ),
                BoolWidget(
                  firstChoiceColor: yes2,
                  secondChoiceColor: no2,
                  title: 'Do you have Chronic Disease?',
                  firstIcon: FontAwesomeIcons.check,
                  secondIcon: FontAwesomeIcons.times,
                  firstText: 'Yes',
                  secondText: 'No',
                  firstChoiceDo: () {
                    setState(() {
                      chronicDisease = 'yes';
                      yes2 = Colors.greenAccent;
                      no2 = Colors.white;
                    });
                  },
                  secondChoiceDo: () {
                    setState(() {
                      chronicDisease = 'no';
                      yes2 = Colors.white;
                      no2 = Colors.redAccent;
                    });
                  },
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kCarsNoTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        carsNo = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kCarsModelTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        carModel = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: DropDownMenuCustom(
                    title: 'Your job:',
                    itemsStrings: [
                      'Student',
                      'Jobless',
                      'Private work',
                      'Government'
                    ],
                    f: (value) {
                      setState(() {
                        job = value;
                      });
                    },
                    hint: 'Job type',
                    value: job,
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: DropDownMenuCustom(
                    title: 'Your Blood type:',
                    itemsStrings: ['A', 'AB', 'B', 'O', 'A+', 'B+', 'A-', 'B-'],
                    f: (value) {
                      setState(() {
                        bloodType = value;
                      });
                    },
                    hint: 'Blood type',
                    value: bloodType,
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
