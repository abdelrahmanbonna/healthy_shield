import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/visitsDetails.dart';

class MedicalHistory extends StatefulWidget {
  static String id = 'history';

  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //TODO add widgets
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Medical History'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, VisitsDetails.id);
            },
            child: Text('View'),
          ),
        ],
      ),
    );
  }
}
