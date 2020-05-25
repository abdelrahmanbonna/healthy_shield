import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.text, this.func});

  final String text;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        text,
        style: kButtonTextStyle,
      ),
      onPressed: func,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 120.0,
        height: 40.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: kPrimaryColor,
    );
  }
}
