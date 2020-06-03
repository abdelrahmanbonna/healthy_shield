import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/about.dart';
import 'package:healthyshield/Screens/continueUserReg.dart';
import 'package:healthyshield/Screens/forgetpass.dart';
import 'package:healthyshield/Screens/home.dart';
import 'package:healthyshield/Screens/loading.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Screens/medicalHistory.dart';
import 'package:healthyshield/Screens/report.dart';
import 'package:healthyshield/Screens/visitsDetails.dart';
import 'package:healthyshield/Services/doctorData.dart';
import 'package:healthyshield/Services/patientData.dart';
import 'package:healthyshield/Services/visitData.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:provider/provider.dart';

import 'Screens/UsersRegistartion.dart';
import 'Services/placeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserData()),
        ChangeNotifierProvider.value(value: MedicalPlaceData()),
        ChangeNotifierProvider.value(value: DoctorData()),
        ChangeNotifierProvider.value(value: VisitData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          //TODO: Name every route of the app in this map
          MainLayout.id: (context) => MainLayout(),
          Login.id: (context) => Login(),
          ForgetPass.id: (context) => ForgetPass(),
          Loading.id: (context) => Loading(),
          UsersRegistration.id: (context) => UsersRegistration(),
          ContinueUserReq.id: (context) => ContinueUserReq(),
          Report.id: (context) => Report(),
          About.id: (context) => About(),
          VisitsDetails.id: (context) => VisitsDetails(),
          MedicalHistory.id: (context) => MedicalHistory(),
        },
        initialRoute: Login.id,
        theme: kLightTheme,
      ),
    );
  }
}
