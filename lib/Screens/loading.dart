import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:healthyshield/Screens/continueUserReg.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:provider/provider.dart';

class Loading extends StatefulWidget {
  static String id = "loading";

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  static bool firstLogin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoHome(context) async {
    firstLogin = !Provider.of<UserData>(context).user.getAccepted();
    await sleep(
        Duration(milliseconds: 10)); //TODO: remove this after connecting to API
    if (firstLogin == true) {
      Navigator.pushNamedAndRemoveUntil(
          context, ContinueUserReq.id, (Route<dynamic> route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, MainLayout.id, (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    gotoHome(context);
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
