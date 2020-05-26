import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
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

  var screensList = [
    //Home screen
    BarScreen(
      navBar: null,
      mainOfScareen: Column(
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
              func: null,
              height: 50.0,
              text: 'Request Ambulance',
            ),
          ),
          Padding(
            padding: kPaddingValue,
            child: RoundIconButton(
              func: null,
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
      mainOfScareen: Image.network(
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
            onPressed: null,
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    //TODO:Report screen
    BarScreen(
      navBar: AppBar(
        title: Text('Report'),
      ),
      mainOfScareen: Column(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: screensList[currentChoice],
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
            icon: Icon(Icons.code),
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
