import 'package:flutter/material.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Services/visitData.dart';
import 'package:healthyshield/Utilities/visitWidget.dart';
import 'package:provider/provider.dart';

import 'visitsDetails.dart';

class MedicalHistory extends StatefulWidget {
  static String id = 'history';

  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    var _user = Provider.of<UserData>(context).user.iD;
    Stream stream =
        Stream.fromFuture(Provider.of<VisitData>(context).fillList(_user));
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
