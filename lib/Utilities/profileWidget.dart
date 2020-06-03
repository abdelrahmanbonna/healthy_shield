import 'package:flutter/material.dart';

import 'constants.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget(
      {this.color,
      this.icon,
      this.text,
      this.showShadow = false,
      this.longPress});

  final IconData icon;
  final color;
  final String text;
  final bool showShadow;
  final Function longPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onLongPress: longPress,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border(
              right:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1),
              left: BorderSide(color: Theme.of(context).primaryColor, width: 1),
              top: BorderSide(color: Theme.of(context).primaryColor, width: 1),
              bottom:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1),
            ),
            boxShadow: showShadow
                ? [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 5, spreadRadius: 5),
                    BoxShadow(
                        color: Colors.black12, blurRadius: 3, spreadRadius: 2),
                    BoxShadow(
                        color: Colors.black12, blurRadius: 2, spreadRadius: 1)
                  ]
                : [],
            color: Theme.of(context).accentColor,
          ),
          child: Center(
            child: Row(
              children: [
                Padding(
                  padding: kPaddingValueL,
                  child: Icon(
                    icon,
                    size: 20,
                    color: color,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .merge(TextStyle(color: color, fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
