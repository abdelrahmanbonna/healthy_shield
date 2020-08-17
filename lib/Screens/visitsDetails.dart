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
                  text: 'Place name  ${widget.pname}',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place Email ${widget.pemail}',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place phone number  ${widget.pphone}',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Place Address  ${widget.paddress}',
                  icon: FontAwesomeIcons.clinicMedical,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor name ${widget.dname}',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor Email ${widget.demail}',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Doctor Phone number ${widget.dphone}',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Specialty ${widget.spec}',
                  icon: FontAwesomeIcons.userMd,
                  color: Theme.of(context).primaryColor,
                ),
                ProfileWidget(
                  text: 'Date  ${widget.date}',
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
                          '${widget.prescription}',
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
