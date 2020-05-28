import 'package:flutter/material.dart';

class BarScreen extends StatelessWidget {
  BarScreen({this.navBar, this.mainOfScreen});

  final navBar;
  final mainOfScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: mainOfScreen,
          ),
        ),
      ),
    );
  }
}
