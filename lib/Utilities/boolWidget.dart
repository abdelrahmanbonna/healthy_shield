import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class BoolWidget extends StatelessWidget {
  BoolWidget(
      {this.color,
      this.firstIcon,
      this.firstChoiceDo,
      this.firstText,
      this.secondChoiceDo,
      this.secondIcon,
      this.secondText});

  final Color color;
  final IconData firstIcon, secondIcon;
  final Function firstChoiceDo, secondChoiceDo;
  final String firstText, secondText;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: color,
      textStyle: Theme.of(context).textTheme.subtitle2,
      elevation: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: firstChoiceDo,
              child: Row(
                children: [
                  Padding(
                    padding: kPaddingValue,
                    child: Icon(
                      this.firstIcon,
                      size: 15,
                    ),
                  ),
                  Text(firstText),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: secondChoiceDo,
              child: Row(
                children: [
                  Padding(
                    padding: kPaddingValue,
                    child: Icon(
                      secondIcon,
                      size: 15,
                    ),
                  ),
                  Text(secondText),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
