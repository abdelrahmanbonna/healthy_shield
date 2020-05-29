import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/boolWidget.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';

//Here is Home screen

class MainLayout extends StatefulWidget {
  static String id = "home";

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentChoice = 0;

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
                //TODO: go to history
                func: () {},
                height: 50.0,
                text: 'Call Ambulance',
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
                //TODO: go to history
                func: () {},
                height: 50.0,
                text: 'Medical History',
              ),
            )
          ],
        ),
      ),
      //Barcode screen
      BarScreen(
        navBar: null,
        mainOfScreen: Image.network(
          kAPILink,
          scale: 0.2,
        ),
      ),
      //TODO:Profile screen
      BarScreen(
        navBar: AppBar(
          actions: [
            FlatButton(
              //TODO: Add functionality to the button
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ],
        ),
        mainOfScreen: Column(
          children: [
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
          ],
        ),
      ),
      //TODO:Report screen
      BarScreen(
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
                maxLines: 22,
                decoration: kReportTextFieldStyle,
              ),
            ),
            RoundIconButton(
              height: 40,
              //TODO: add function
              func: () {},
              text: 'Submit',
            )
          ],
        ),
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
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text('Barcode'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            title: Text('Report'),
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
