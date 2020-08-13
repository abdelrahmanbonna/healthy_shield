import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/Utilities/profileWidget.dart';

class VisitsDetails extends StatefulWidget {
  static String id = "visit";

  @override
  _VisitsDetailsState createState() => _VisitsDetailsState();
}

class _VisitsDetailsState extends State<VisitsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Visit Details',
          style: Theme.of(context).textTheme.headline1.merge(
                TextStyle(color: Colors.white),
              ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidget(
                  text: 'Place name  Nasayem Hospital',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place Email nasayem@test.com',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place phone number  20200000000',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place Address  eltagamo3 el 5ames',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor name Mohamed H',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor Email mohamedh@yahoo.com',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor Phone number 0100020030',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Specialty Heart',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Date  2/5/2020',
                  icon: FontAwesomeIcons.calendarDay,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        right: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                        left: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                        top: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                        bottom: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: kPaddingValueL,
                              child: Icon(
                                FontAwesomeIcons.clipboardList,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Prescription',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .merge(TextStyle(fontSize: 16)),
                            ),
                          ],
                        ),
                        Text(
                          'Here is the prescription where dr place his drugs.',
                          textAlign: TextAlign.center,
                          maxLines: 80,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .merge(TextStyle(fontSize: 18)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
