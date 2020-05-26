import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO: Make Light Theme for the app
var kLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF0879a7),
  accentColor: Colors.white,
  fontFamily: 'AlSharkTitle',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 32.0, color: kPrimaryColor),
    headline2: TextStyle(fontSize: 22.0, color: kPrimaryColor),
    headline3: TextStyle(),
    headline4: TextStyle(),
    headline5: TextStyle(),
    headline6: TextStyle(),
    button: TextStyle(
      color: Colors.white,
      fontSize: 32.0,
    ),
    subtitle1: TextStyle(fontSize: 18.0, color: kPrimaryColor),
    subtitle2: TextStyle(fontSize: 16.0, color: kPrimaryColor),
  ),
);

//Colors of the App
const kPrimaryColor = Color(0xFF0879a7);
const kAccentColor = Colors.white;

//padding constant
const kPaddingValue = EdgeInsets.all(15.0);

//BarCode API Link
//TODO: Remove the value of my number after making the database API
const kAPILink = 'http://www.barcodes4.me/barcode/i2of5/01102777726.jpg';

//Text Styles
const kTextStyleLight = TextStyle(fontSize: 32.0, color: kPrimaryColor);

//Text Field Style
const kPasswordTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Password',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 22.0),
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
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 22.0),
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
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 25.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
