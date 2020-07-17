import 'package:flutter/material.dart';
import 'package:healthyshield/Utilities/visitWidget.dart';

import 'visitsDetails.dart';

class MedicalHistory extends StatefulWidget {
  static String id = 'history';

  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TODO add widgets after API call
                VisitWidget(
                  backgroundColor: Colors.white,
                  date: '2020-05-28',
                  placeName: 'Nsayem Hospital',
                  specialty: 'Heart',
                  onPress: () {
                    Navigator.pushNamed(context, VisitsDetails.id);
                  },
                ),
                VisitWidget(
                  backgroundColor: Colors.white,
                  date: '2020-05-28',
                  placeName: 'Nsayem Hospital',
                  specialty: 'Heart',
                  onPress: () {
                    Navigator.pushNamed(context, VisitsDetails.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Medical History',
          style: Theme.of(context)
              .textTheme
              .headline1
              .merge(TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
