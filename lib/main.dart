import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/continueUserReg.dart';
import 'package:healthyshield/Screens/forgetpass.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Screens/loading.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Utilities/constants.dart';

import 'Screens/UsersRegistartion.dart';

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
        MainLayout.id: (context) => MainLayout(),
        Login.id: (context) => Login(),
        ForgetPass.id: (context) => ForgetPass(),
        Loading.id: (context) => Loading(),
        UsersRegistartion.id: (context) => UsersRegistartion(),
        ContinueUserReq.id: (context) => ContinueUserReq(),
      },
      initialRoute: MainLayout.id,
      theme: kLightTheme,
    );
  }
}
