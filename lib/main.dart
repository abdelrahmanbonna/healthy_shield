import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/forgetpass.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Screens/splash.dart';
import 'package:healthyshield/Utilities/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //TODO: Name every route of the app in this map
        Home.id: (context) => Home(),
        Login.id: (context) => Login(),
        ForgetPass.id: (context) => ForgetPass(),
        Splash.id: (context) => Splash(),
      },
      initialRoute: Login.id,
      theme: kLightTheme,
    );
  }
}
