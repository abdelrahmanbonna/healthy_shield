import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyshield/Screens/continueUserReg.dart';
import 'package:healthyshield/Screens/login.dart';
import 'package:healthyshield/Services/location.dart';
import 'package:healthyshield/Utilities/constants.dart';
import 'package:healthyshield/models/patient.dart';
import 'package:http/http.dart' as http;

class UserData extends ChangeNotifier {
  Patient user = Patient('01102777726');
  String aPIUrl = "http://127.0.0.1:8000/api/";

  void testStart() {
    user.email = "abdelrahmanbonna@outlook.com";
    user.setAllDataUsage(
        'Abdelrahman',
        'Bonna',
        '01102777726',
        '1st villa tagamo3',
        DateTime(1998, 5, 28),
        175,
        77,
        "Male",
        true,
        "40");
    user.setBloodType("A+");
    getBMI();
  }

  String getPatientBarcode() {
    return kBarcodeAPILink + user.iD + ".png";
  }

  void loginPatient(email, pass) async {
    //TODO: Login process goes here
    Map<String, dynamic> map = {
      'email': email,
      'password': pass,
    };
    try {
      // response to make login
      final response = await http.post(
        '${aPIUrl + 'user-login'}',
        body: json.encode(map),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );

      // taking token from the login
      if (response.statusCode == 200 || response.statusCode == 201) {
        var tokenjson = json.decode(response.body);
        // taking data from api to show in the app
        final data = await http.post(
          '${aPIUrl + 'user/info'}',
          headers: {
            "Authorization": "Bearer ${tokenjson['access_token']}",
            'Content-Type': 'application/json',
          },
        ).timeout(
          const Duration(seconds: 30),
        );
        //user = Patient(iD);
        //user.setAllDataUsage(fname, lname, mobile, address, birthdate, height, weight, gender, accepted)
      } else {
        throw Exception('Error ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }

  void regPatient(context, fname, lname, email, mobile, address, city, password,
      confirmPass) {
    if (password == confirmPass) {
      user.setAccepted(false);
      user.setFirstName(fname);
      user.setLasName(lname);
      user.setAddress(address);
      user.email = email;
      user.setMobile(mobile);
      user.setPassword(password);
      Navigator.pushNamed(context, ContinueUserReq.id);
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

  void continueReg(
      context,
      gender,
      noOfDep,
      noOfCars,
      carModel,
      birth,
      height,
      weight,
      income,
      lostleg,
      lostarm,
      chronicdis,
      mobilefee,
      job,
      bloodtype) async {
    //TODO but those vars in database
    Map<String, dynamic> map;
    if (int.parse(noOfCars) >= 3 ||
        int.parse(noOfDep) >= 4 ||
        int.parse(carModel) >= 2015 ||
        int.parse(income) >= 15000) {
      map = {
        'name': user.getFirstName() + " " + user.getLasName(),
        'email': user.email,
        'address': user.getAddress(),
        'city': user.getCity(),
        'gender': gender,
        'job': job,
        'birthdate': birth,
        'cutoflegs': lostleg,
        'cutofarms': lostarm,
        'chronicdisease': chronicdis,
        'monthlyincome': income,
        'mobilefees': mobilefee,
        'noofcars': noOfCars,
        'carmodel': carModel,
        'bloodtype': bloodtype,
        'height': height,
        'weight': weight,
        'insurance': 0, //random numbers
        'password': user.getPassword(),
        'accepted': 0,
        'password_confirmation': user.getPassword(),
      };
    } else {
      map = {
        'name': user.getFirstName() + user.getLasName(),
        'email': user.email,
        'address': user.getAddress(),
        'city': user.getCity(),
        'gender': gender,
        'job': job,
        'birthdate': birth,
        'cutoflegs': lostleg,
        'cutofarms': lostarm,
        'chronicdisease': chronicdis,
        'monthlyincome': income,
        'mobilefees': mobilefee,
        'noofcars': noOfCars,
        'carmodel': carModel,
        'bloodtype': bloodtype,
        'height': height,
        'weight': weight,
        'insurance': 80, //random numbers
        'password': user.getPassword(),
        'accepted': 0,
        'password_confirmation': user.getPassword(),
      };
    }
    try {
      //making register request
      final response = await http.post(
        '${aPIUrl + 'user-register'}',
        body: json.encode(map),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        showDialog(
            context: context,
            child: Center(
              child: Text(
                'You are Registered. Please login!',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            barrierColor: Colors.white);
        Navigator.of(context)
            .pushNamedAndRemoveUntil(Login.id, (route) => false);
      } else {
        throw Exception("error ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> requestAmbulance() async {
    var location = Location();
    await location.getLocation();
    //TODO: Add other data and make the request Sarah Task
    /*
      user_id
      date    DateTime.now()
      location_link  "https://www.google.com/maps/@${location.latitude},${location.longitude},15z"
     */
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
