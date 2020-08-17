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
  Patient user;
  String aPIUrl = "http://192.168.1.26:8000/api";
  var tokenJson;

  String getPatientBarcode() {
    return kBarcodeAPILink + user.iD + ".png";
  }

  Future<bool> loginPatient(email, pass) async {
    Map<String, dynamic> map = {
      'email': email,
      'password': pass,
    };

    // response to make login
    final response = await http.post(
      "$aPIUrl/user-login",
      body: json.encode(map),
      headers: {'Content-Type': 'application/json'},
    ).timeout(
      const Duration(seconds: 30),
    );
    // taking token from the login
    if (response.statusCode == 200 || response.statusCode == 201) {
      tokenJson = json.decode(response.body)['access_token'];
      // taking data from api to show in the app
      print(tokenJson);
      await getData();
      return true;
    } else {
      throw Exception('Error ${response.statusCode}');
    }

    return false;
  }

  Future<void> getData() async {
    final data = await http.get(
      '${aPIUrl + '/user/info'}',
      headers: {
        "Authorization": "Bearer $tokenJson",
        'Content-Type': 'application/json',
      },
    ).timeout(
      const Duration(seconds: 30),
    );
    if (data.statusCode == 200 || data.statusCode == 201) {
      var dataDecoded = json.decode(data.body)[0];
      user = Patient(dataDecoded['id'].toString());
      user.setAllDataUsage(
        name: dataDecoded['name'].toString(),
        gender: dataDecoded['gender'].toString(),
        address: dataDecoded['address'].toString(),
        height: int.parse(dataDecoded['height'].toString()),
        weight: int.parse(dataDecoded['weight'].toString()),
        mobile: dataDecoded['phone'].toString(),
        birthdate: DateTime.parse(dataDecoded['birthdate'].toString()),
        accepted: dataDecoded['accepted'].toString() == '1',
        mail: dataDecoded['email'].toString(),
        blood: dataDecoded['bloodtype'].toString(),
        percentage: dataDecoded['insurance'].toString(),
      );
    } else {
      throw Exception('Error ${data.statusCode}');
    }
    notifyListeners();
  }

  void regPatient(
      context, name, email, mobile, address, city, password, confirmPass) {
    user = Patient("000");
    if (password == confirmPass) {
      user.setAccepted(false);
      user.setName(name);
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
    Map<String, dynamic> map;
    if (int.parse(noOfCars) >= 3 ||
        int.parse(noOfDep) >= 4 ||
        int.parse(carModel) >= 2015 ||
        int.parse(income) >= 15000) {
      map = {
        'name': user.getName(),
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
        'name': user.getName(),
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
        '${aPIUrl + '/user-register'}',
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

  Future<void> requestAmbulance(context) async {
    var location = Location();
    await location.getLocation();
    Map<String, dynamic> map = {
      'user_id': user.iD,
      'date': DateTime.now(),
      'location_link':
          "https://www.google.com/maps/@${location.latitude},${location.longitude},15z",
    };
    try {
      final response = await http.post(
        '${aPIUrl + '/ambulance-requests-add'}',
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
                'Ambulance requested please wait.!',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            barrierColor: Colors.white);
      } else {
        throw Exception("error ${response.statusCode}");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  void makeReport(context, String report) async {
    Map<String, dynamic> map = {
      'name': user.getName(),
      'email': user.email,
      'message': report,
      'accounttype': "user",
      'phone': user.getMobile(),
    };

    final response = await http.post(
      '${aPIUrl + '/report-add'}',
      body: json.encode(map),
      headers: {'Content-Type': 'application/json'},
    ).timeout(
      const Duration(seconds: 30),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      showDialog(
          context: context,
          child: AlertDialog(
            title: Text('Report sent'),
            content: Text('Report has been sent.'),
          ),
          barrierColor: Colors.grey);
    }
  }

  void editProfile(
      newEmail, newPass, newMobile, newAddress, newHeight, newWeight) {
    user.setMobile(newMobile);
    user.setAddress(newAddress);
    user.setHeight(newHeight);
    user.setWeight(newWeight);
    //TODO make edits in API
    notifyListeners();
  }

  void getBMI() {
    user.setPatientBMI();
    notifyListeners();
  }

  void setMobile(val) {
    user.setMobile(val);
    notifyListeners();
  }
}
