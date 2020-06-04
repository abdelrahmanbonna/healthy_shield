import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO: Make Light Theme for the app
var kLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF0879a7),
  accentColor: Colors.white,
  fontFamily: 'AlSharkTitle',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 27.0, color: kPrimaryColor),
    headline2: TextStyle(fontSize: 22.0, color: kPrimaryColor),
    headline3: TextStyle(fontSize: 18.0, color: kPrimaryColor),
    headline4: TextStyle(),
    headline5: TextStyle(),
    headline6: TextStyle(),
    button: TextStyle(
      color: Colors.white,
      fontSize: 17.0,
    ),
    subtitle1: TextStyle(fontSize: 18.0, color: kPrimaryColor),
    subtitle2: TextStyle(fontSize: 16.0, color: kPrimaryColor),
  ),
);

//Colors of the App
const kPrimaryColor = Color(0xFF0879a7);
const kAccentColor = Colors.white;

//padding constant
const kPaddingValue = EdgeInsets.all(8.0);
const kPaddingValueL = EdgeInsets.only(left: 20.0, top: 15, bottom: 15);
const kPaddingValueLists =
    EdgeInsets.only(left: 20.0, top: 6, bottom: 6, right: 20);
const kPaddingValueList =
    EdgeInsets.only(left: 15.0, top: 5, bottom: 5, right: 15.0);
//BarCode API Link
//TODO: Remove the value of my number after making the database API
const kAPILink = 'http://www.barcodes4.me/barcode/i2of5/';

//Text Styles
const kTextStyleLight = TextStyle(fontSize: 32.0, color: kPrimaryColor);

//Text Field Style
const kPasswordTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Password',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kCPasswordTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Confirm Password',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

//Text Field Style
const kEmailTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Email',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

// Report TextField Style
const kReportTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter your Report',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kFNameTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'First Name',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kLNameTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Last Name',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kEmaillTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Email',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kPhoneNoTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Phone No.',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kAddressTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Address',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kBirthDateTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Birthdate',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kJobTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Job',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kMIncomeTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Monthly Income',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kNoOfDepTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'No Of Dependences',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kHeightTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Height',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kWeightTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Weight',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);

const kCurrentPassTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Current Password',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 18.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
