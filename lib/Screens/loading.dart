import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:healthyshield/Screens/continueUserReg.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Utilities/constants.dart';

class Loading extends StatefulWidget {
  static String id = "loading";

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  static bool firstLogin = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoHome() async {
    await sleep(Duration(milliseconds: 10));
    if (firstLogin == true) {
      firstLogin = false;
      Navigator.pushNamedAndRemoveUntil(
          context, ContinueUserReq.id, (Route<dynamic> route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, MainLayout.id, (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    gotoHome();
    return Scaffold(
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
    );
  }
}
