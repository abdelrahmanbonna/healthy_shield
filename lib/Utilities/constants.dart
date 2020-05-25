import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// TODO: Make Light Theme for the app
var kLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xFF0879a7),
  accentColor: Colors.white,
  fontFamily: 'AlSharkTitle',
);

// Desgined Button Text Style
const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 32.0,
);

//Colors of the App
const kPrimaryColor = Color(0xFF0879a7);
const kAccentColor = Colors.white;

//padding constant
const kPaddingValue = EdgeInsets.all(15.0);

//Text Styles
const kTextStyleLight = TextStyle(fontSize: 32.0, color: kPrimaryColor);

//Text Field Style
const kPasswordTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Password',
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 20.0),
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
  hintStyle: TextStyle(color: kPrimaryColor, fontSize: 20.0),
  border: OutlineInputBorder(
    //borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
