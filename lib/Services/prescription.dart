class Prescription {
  Prescription({this.id, this.doctor_Id, this.visit_Id});

  final String id, doctor_Id, visit_Id;
  String _description;

  String getDescription() {
    return _description;
  }
}
