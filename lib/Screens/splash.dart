import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Utilities/constants.dart';

class Splash extends StatefulWidget {
  static String id = "splash";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void gotoHome(){
    Navigator.pushNamed(context, Login.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                'Assets/Asset2.png',
                scale: 10,
              ),
            ),
            SpinKitCircle(
              color: kPrimaryColor,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
