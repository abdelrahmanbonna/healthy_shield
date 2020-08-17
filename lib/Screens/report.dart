import 'package:flutter/material.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Utilities/barScreen.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/desginedButton.dart';
import 'package:provider/provider.dart';

class Report extends StatefulWidget {
  static String id = 'report';

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  static String report = "";
  @override
  Widget build(BuildContext context) {
    return BarScreen(
      navBar: AppBar(
        title: Text(
          'Report',
          style: Theme.of(context)
              .textTheme
              .headline1
              .merge(TextStyle(color: Colors.white)),
        ),
      ),
      mainOfScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: kPaddingValue,
            child: TextField(
              maxLines: 10,
              decoration: kReportTextFieldStyle,
              onChanged: (value) {
                report = value;
              },
            ),
          ),
          RoundIconButton(
            height: 40,
            func: () {
              Provider.of<UserData>(context, listen: false)
                  .makeReport(context, report);
            },
            text: 'Submit',
          )
        ],
      ),
    );
  }
}
