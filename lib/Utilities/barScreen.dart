import 'package:flutter/material.dart';

class BarScreen extends StatelessWidget {
  BarScreen({this.navBar, this.mainOfScareen});

  final navBar;
  final mainOfScareen;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: navBar,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: mainOfScareen,
          ),
        ),
      ),
    );
  }
}
