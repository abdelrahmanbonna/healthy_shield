import 'package:flutter/material.dart';
import 'package:healthyshield/Services/location.dart';
import 'package:healthyshield/Services/patient.dart';
import 'package:healthyshield/Services/visit.dart';
import 'package:healthyshield/Utilities/constants.dart';

class UserData extends ChangeNotifier {
  Patient user;

  void setUserObject(String email, String pass) {
    user = Patient(email: email, password: pass);
  }

  String getPatientBarcode() {
    return kAPILink + user.getID() + ".png";
  }

  void loginPatient() {
    //TODO: Login process goes here
  }

  void regPatient(
      context, fname, lname, email, mobile, address, password, confirmPass) {
    if (password == confirmPass) {
      //TODO: Reg process goes here
    } else {
      showDialog(
          context: context,
          child: Center(
            child: Text(
              'Please confirm password correctly.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          barrierColor: Colors.white);
    }
  }

  void continueReg() {}

  Future<void> requestAmbulance() async {
    var location = Location();
    await location.getLocation();
    //TODO: Add other data and make the request
  }

  List<Visit> getMedicalHistory() {
    List<Visit> list = [];
    //TODO function to add the visits into the list
    return list;
  }

  void makeReport(String report) {
    //TODO send report to database
  }

  void editProfile(
      newEmail, newPass, newMobile, newAddress, newHeight, newWeight) {
    user.setMobile(newMobile);
    user.setAddress(newAddress);
    user.setHeight(newHeight);
    user.setWeight(newWeight);
    //TODO Take those info with pass and email and change then in database

    notifyListeners();
  }
}
