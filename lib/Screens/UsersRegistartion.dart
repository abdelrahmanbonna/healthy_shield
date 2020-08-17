import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:provider/provider.dart';

class UsersRegistration extends StatefulWidget {
  static String id = "userReg";

  @override
  _UsersRegistrationState createState() => _UsersRegistrationState();
}

class _UsersRegistrationState extends State<UsersRegistration> {
  String fName, lName, email, address, password, cPass, phone, city;

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
            title: Text('Continue'),
          ),
        ],
        onTap: (index) {
          //TODO : add button func here
          if (index == 1) {
            Provider.of<UserData>(context, listen: false).regPatient(
                context,
                fName + " " + lName,
                email,
                phone,
                address,
                city,
                password,
                cPass);
          } else {
            Navigator.pop(context);
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
                    decoration: kFNameTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        fName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kLNameTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        lName = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kEmaillTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kPhoneNoTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        phone = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kAddressTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kCityTextFieldStyle,
                    onChanged: (value) {
                      setState(() {
                        city = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: 'X',
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kPasswordTextFieldStyle,
                    onChanged: (value) {
                      setState(
                        () {
                          password = value;
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: kPaddingValue,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: 'X',
                    style: Theme.of(context).textTheme.subtitle1,
                    decoration: kCPasswordTextFieldStyle,
                    onChanged: (value) {
                      setState(
                        () {
                          cPass = value;
                        },
                      );
                    },
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
