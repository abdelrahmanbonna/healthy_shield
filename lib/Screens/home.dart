import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Screens/about.dart';
import 'package:healthyshield/Screens/changingPassword.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Screens/medicalHistory.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';
import 'package:healthyshield/Utilities/profileWidget.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool loading = true;
  String button = "";

  _launchURL(String phone) async {
    const url = 'tel:' + phone;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildBottomSheet(BuildContext context) {
    String newValue = " ";

    if (button == "weight") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Provider.of<UserData>(context, listen: false)
              .user
              .setWeight(int.parse(newValue));
          Provider.of<UserData>(context, listen: false).getBMI();
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          newValue = value;
          print(newValue);
        },
        field: 'Weight',
      );
    } else if (button == "height") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Provider.of<UserData>(context, listen: false)
              .user
              .setHeight(int.parse(newValue));
          Provider.of<UserData>(context, listen: false).getBMI();
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          newValue = value;
        },
        field: 'Height',
      );
    } else if (button == "mobile") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Provider.of<UserData>(context, listen: false).setMobile(newValue);
          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          newValue = value;
        },
        field: 'Mobile',
      );
    } else if (button == "email") {
      return BottomSheetEditor(
        onChangeFunction: (value) {
          newValue = value;
        },
        buttonFunction: () {
          //TODO add value to database

          Provider.of<UserData>(context, listen: false).user.email = newValue;

          Navigator.pop(context);
        },
        field: 'Email',
      );
    } else if (button == "address") {
      return BottomSheetEditor(
        buttonFunction: () {
          //TODO add value to database
          Provider.of<UserData>(context, listen: false)
              .user
              .setAddress(newValue);

          Navigator.pop(context);
        },
        onChangeFunction: (value) {
          newValue = value;
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
                func: () {
//                  Provider.of<UserData>(context, listen: false)
//                      .requestAmbulance(context);
//TODO call
                  _launchURL("123");
                },
                height: 50.0,
                text: 'Call Ambulance',
              ),
            ),
            Padding(
              padding: kPaddingValue,
              child: RoundIconButton(
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
          Provider.of<UserData>(context).getPatientBarcode(),
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
              text: 'Name: ' + Provider.of<UserData>(context).user.getName(),
              icon: FontAwesomeIcons.idCard,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Birth date: ' +
                  Provider.of<UserData>(context).user.getBirthdate().toString(),
              icon: FontAwesomeIcons.baby,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text:
                  'Gender: ' + Provider.of<UserData>(context).user.getGender(),
              icon: Icons.wc,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Mobile: ' +
                  Provider.of<UserData>(context).user.getMobile().toString(),
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
              text: 'Email: ' +
                  Provider.of<UserData>(context).user.email.toString(),
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
              text: 'Address: ' +
                  Provider.of<UserData>(context).user.getAddress(),
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
              text: 'Blood Type: ' +
                  Provider.of<UserData>(context).user.getBloodType().toString(),
              icon: FontAwesomeIcons.eyeDropper,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Height: ' +
                  Provider.of<UserData>(context).user.getHeight().toString(),
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
              text: 'Weight: ' +
                  Provider.of<UserData>(context).user.getWeight().toString(),
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
              text: 'BMI: ' +
                  Provider.of<UserData>(context).user.getBMI().toString(),
              icon: FontAwesomeIcons.weight,
              color: Theme.of(context).primaryColor,
            ),
            ProfileWidget(
              text: 'Insurance: ' +
                  Provider.of<UserData>(context)
                      .user
                      .getInsurancePercentage()
                      .toString(),
              icon: FontAwesomeIcons.percentage,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
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
    return loading
        ? Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Assetbackground.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
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
                          scale: 8,
                        ),
                      ),
                    ),
                    SpinKitCircle(
                      color: kPrimaryColor,
                      size: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Scaffold(
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      loading = !loading;
    });
  }
}
