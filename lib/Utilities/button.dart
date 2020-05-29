import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';

class AmbulanceButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        gradient: LinearGradient(
          colors: [Colors.redAccent, Theme.of(context).primaryColor],
        ),
      ),
      child: InkWell(
        onTap: () {
          print("Hello World");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              HumanitarianIcons.ambulance,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Call Ambulance',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .merge(TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
