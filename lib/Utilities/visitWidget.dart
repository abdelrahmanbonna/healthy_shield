import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/constants.dart';

class VisitWidget extends StatelessWidget {
  VisitWidget(
      {this.backgroundColor,
      this.onPress,
      this.date,
      this.placeName,
      this.specialty});

  final Color backgroundColor;
  final Function onPress;
  final String placeName, specialty, date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingValueList,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border(
              top:
                  BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
              bottom:
                  BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
              left:
                  BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
              right:
                  BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 3, spreadRadius: 2),
              BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 2),
              BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1),
            ],
            color: backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  placeName,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                Text(
                  specialty,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
