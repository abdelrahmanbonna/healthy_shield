import 'package:flutter/material.dart';

import 'constants.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({this.color, this.icon, this.text});

  final IconData icon;
  final color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border(
            right: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            left: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            top: BorderSide(color: Theme.of(context).primaryColor, width: 1),
            bottom: BorderSide(color: Theme.of(context).primaryColor, width: 1),
          ),
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
    );
  }
}
