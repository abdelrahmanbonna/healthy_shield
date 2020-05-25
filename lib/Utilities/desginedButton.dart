import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.text, this.func, this.width, this.height});

  final String text;
  final Function func;
  final double width;
  final double height;

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
        width: width,
        height: height,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      fillColor: kPrimaryColor,
    );
  }
}
