import 'package:healthyshield/Services/prescription.dart';

class Visit {
  Visit({this.user_Id, this.id});

  final String user_Id, id;

  String _place_id, _doctor_id;
  DateTime _date;
  Prescription _prescription;

  Prescription getPrescription() {
    return _prescription;
  }

  void setAllData(
      String place, String doctor, DateTime date, Prescription pre) {
    place = _place_id;
    doctor = _doctor_id;
    date = _date;
    pre = _prescription;
  }
}
