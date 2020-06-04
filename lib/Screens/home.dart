import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Screens/about.dart';
import 'package:healthyshield/Screens/changingPassword.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Screens/medicalHistory.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';
import 'package:healthyshield/Utilities/profileWidget.dart';

import 'bottomSheet.dart';
import 'report.dart';

//Here is Home screen

class MainLayout extends StatefulWidget {
  static String id = "home";

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentChoice = 0;
  String button = "";

  Widget buildBottomSheet(BuildContext context) {
    if (button == "weight") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          //TODO take the value
        },
        field: 'Weight',
      );
    } else if (button == "height") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          //TODO take the value
        },
        field: 'Height',
      );
    } else if (button == "mobile") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          //TODO take the value
        },
        field: 'Mobile',
      );
    } else if (button == "email") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          //TODO take the value
        },
        field: 'Email',
      );
    } else if (button == "address") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          //TODO take the value
        },
        field: 'Address',
      );
    } else
      return Container();
  }

  BarScreen getScreens(context, int current) {
    var screensList = [
      //Home screen
      BarScreen(
        navBar: null,
        mainOfScreen: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
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
              child: RoundIconButton(
                //TODO: Make Ambulance Request
                func: () {},
                height: 50.0,
                text: 'Call Ambulance',
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                //TODO: go to history
                func: () {
                  Navigator.pushNamed(context, MedicalHistory.id);
                },
                height: 50.0,
                text: 'Medical History',
              ),
            )
          ],
        ),
      ),
      //Barcode screen
      BarScreen(
        navBar: AppBar(
          title: Text(
            'Barcode',
            style: Theme.of(context)
                .textTheme
                .headline1
                .merge(TextStyle(color: Colors.white)),
          ),
        ),
        mainOfScreen: Image.network(
          kAPILink + "123124575.png",
          scale: 0.2,
        ),
      ),
      //TODO:Profile screen
      BarScreen(
        navBar: AppBar(
          title: Text(
            'Profile',
            style: Theme.of(context)
                .textTheme
                .headline1
                .merge(TextStyle(color: Colors.white)),
          ),
          actions: [
            FlatButton(
              //TODO: Add functionality to the button
              onPressed: () {
                Navigator.pushNamed(context, ChangingPassword.id);
              },
              child: Icon(
                FontAwesomeIcons.key,
                color: Colors.white,
              ),
            ),
          ],
        ),
        mainOfScreen: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileWidget(
              text: 'First name: ',
              icon: FontAwesomeIcons.idCard,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Last name: ',
              icon: FontAwesomeIcons.idCard,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Birth date:',
              icon: FontAwesomeIcons.baby,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Gender:',
              icon: Icons.wc,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Mobile:',
              icon: FontAwesomeIcons.phone,
              color: Theme.of(context).primaryColor,
              showShadow: true,
              longPress: () {
                button = "mobile";
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                  isDismissible: true,
                );
              },
            ),
            ProfileWidget(
              text: 'Email: ',
              icon: FontAwesomeIcons.mailBulk,
              color: Theme.of(context).primaryColor,
              showShadow: true,
              longPress: () {
                button = "email";
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                  isDismissible: true,
                );
              },
            ),
            ProfileWidget(
              text: 'Address:',
              icon: FontAwesomeIcons.houseUser,
              color: Theme.of(context).primaryColor,
              showShadow: true,
              longPress: () {
                button = "address";
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                  isDismissible: true,
                );
              },
            ),
            ProfileWidget(
              text: 'Blood Type:',
              icon: FontAwesomeIcons.eyeDropper,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Height:',
              icon: Icons.accessibility_new,
              color: Theme.of(context).primaryColor,
              showShadow: true,
              longPress: () {
                button = "height";
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                  isDismissible: true,
                );
              },
            ),
            ProfileWidget(
              text: 'Weight:',
              icon: FontAwesomeIcons.weight,
              color: Theme.of(context).primaryColor,
              showShadow: true,
              longPress: () {
                button = "weight";
                showModalBottomSheet(
                  context: context,
                  builder: buildBottomSheet,
                  isDismissible: true,
                );
              },
            ),
            ProfileWidget(
              text: 'BMI:',
              icon: FontAwesomeIcons.weight,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
      //TODO: Settings Screen
      BarScreen(
        mainOfScreen: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                text: 'About',
                func: () {
                  Navigator.pushNamed(context, About.id);
                },
                height: 50.0,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                text: 'Report',
                func: () {
                  Navigator.pushNamed(context, Report.id);
                },
                height: 50,
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                text: 'Logout',
                func: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Login.id, (route) => false);
                },
                height: 50,
              ),
            )
          ],
        ),
        navBar: null,
      ),
    ];

    return screensList[current];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getScreens(context, currentChoice),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentChoice,
        selectedFontSize: 20.0,
        iconSize: 30.0,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              size: 15,
            ),
            title: Text('Home'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.addressCard,
              size: 20,
            ),
            title: Text('Barcode'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            title: Text('Profile'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.cogs,
              size: 20,
            ),
            title: Text('Settings'),
            backgroundColor: kPrimaryColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentChoice = index;
          });
        },
      ),
    );
  }
}
