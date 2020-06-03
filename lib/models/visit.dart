import 'package:healthyshield/models/prescription.dart';

class Visit {
  Visit({this.user_Id, this.id}); // ignore: non_constant_identifier_names

  final String user_Id, id; // ignore: non_constant_identifier_names

  String _place_id, _doctor_id; // ignore: non_constant_identifier_names
  DateTime _date;
  Prescription _prescription;

  Prescription getPrescription() {
    return _prescription;
  }

  DateTime getDate() {
    return _date;
  }

  void setAllData(
      String place, String doctor, DateTime date, Prescription pre) {
    place = _place_id;
    doctor = _doctor_id;
    date = _date;
    pre = _prescription;
  }
}
