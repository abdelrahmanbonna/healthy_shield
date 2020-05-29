import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class BoolWidget extends StatelessWidget {
  BoolWidget({
    this.firstIcon, //First Choice Icon which is in the first row
    this.firstChoiceDo, //First Choice Function which is in the first row
    this.firstText, //First Choice Title which is in the first row
    this.firstChoiceColor, //First Choice Color which is in the first row title and icon color
    this.secondChoiceDo, //Second Choice Function which is in the second row
    this.secondIcon, //Second Choice Icon which is in the second row
    this.secondText, //Second Choice Title which is in the second row
    this.secondChoiceColor, //Second Choice Color which is in the second row title and icon color
    this.title, // Title of the widget which appears on the top
  });

  final Color firstChoiceColor, secondChoiceColor;
  final IconData firstIcon, secondIcon;
  final Function firstChoiceDo, secondChoiceDo;
  final String firstText, secondText, title;

  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: Theme.of(context).textTheme.subtitle1,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: firstChoiceDo,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: kPaddingValueL,
                      child: Icon(
                        this.firstIcon,
                        size: 30,
                        color: firstChoiceColor,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      firstText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .merge(TextStyle(color: firstChoiceColor)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: secondChoiceDo,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10),
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 5, blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: kPaddingValueL,
                      child: Icon(
                        secondIcon,
                        size: 30,
                        color: secondChoiceColor,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      secondText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .merge(TextStyle(color: secondChoiceColor)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
