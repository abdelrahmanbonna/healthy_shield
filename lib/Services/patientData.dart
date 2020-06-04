import 'package:flutter/material.dart';
import 'package:healthyshield/Services/location.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/models/patient.dart';
import 'package:healthyshield/models/visit.dart';

class UserData extends ChangeNotifier {
  Patient user = Patient();

  void testStart() {
    user.email = "abdelrahmanbonna@outlook.com";
    user.setID('01102777726');
    user.setAllDataUsage('Abdelrahman', 'Bonna', '01102777726',
        '1st villa tagamo3', DateTime(1998, 5, 28), 175, 77, "Male", true);
    user.setBloodType("A+");
    getBMI();
  }

  String getPatientBarcode() {
    return kAPILink + user.getID() + ".png";
  }

  void loginPatient() {
    //TODO: Login process goes here
    var email = user.email;
    var pass = user.getPassword();
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

  void continueReg(gender, noOfDep, noOfCars, carModel, birth, height, weight,
      income, lostleg, lostarm, chronicdis, mobilefee, job, bloodtype) {
    //TODO but those vars in database
  }

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

  void getBMI() {
    user.setPatientBMI();
    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }
}
