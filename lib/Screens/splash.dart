import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:healthyshield/Utilities/constants.dart';

class Splash extends StatelessWidget {
  static String id = "splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SpinKitCircle(
            color: kPrimaryColor,
            size: 90.0,
          ),
        ),
      ),
    );
  }
}
