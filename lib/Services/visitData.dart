import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:healthyshield/models/visit.dart';
import 'package:http/http.dart' as http;

class VisitData extends ChangeNotifier {
  List<Visit> list = [];
  String _aPIUrl = "http://127.0.0.1:8000/api/";
  Visit current;

  fillList(userID) async {
    try {
      var response = await http
          .post(_aPIUrl + "user-appointments/${userID}")
          .timeout(Duration(seconds: 10));
      if (response.statusCode == 200) {
        var appointmentsJson = json.decode(response.body);
        for (var appointment in appointmentsJson) {
          var v = Visit(id: appointment['id'].toString());
          v.setAllDataUsage(
            appointment['doctor_name'].toString(),
            appointment['doctor_email'].toString(),
            appointment['doctor_phone'].toString(),
            appointment['doctor_specialization'].toString(),
            appointment['medicalplaces_name'].toString(),
            appointment['medicalplaces_email'].toString(),
            appointment['medicalplaces_phone'].toString(),
            appointment['medicalplaces_address'].toString(),
            appointment['date'],
            appointment['prescription'],
          );
          list.add(v);
        }
        notifyListeners();
      } else {
        throw Exception('connection error ${response.statusCode}');
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  setCurrentVisit(Visit visit) {
    current = Visit(id: visit.id);
    current.setAllDataUsage(
        visit.getDoctorName(),
        visit.getDoctorEmail(),
        visit.getDoctorPhone(),
        visit.getDoctorSpecial(),
        visit.getMedplaceName(),
        visit.getMedplaceEmail(),
        visit.getMedplacePhone(),
        visit.getMedplaceAddress(),
        visit.getDate(),
        visit.getPrescription());
    notifyListeners();
  }
}
