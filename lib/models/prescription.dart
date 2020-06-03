class Prescription {
  Prescription(
      {this.id,
      this.doctor_Id, // ignore: non_constant_identifier_names
      this.visit_Id}); // ignore: non_constant_identifier_names

  final String id, doctor_Id, visit_Id; // ignore: non_constant_identifier_names
  String _description;

  setDescription(description) {
    _description = description;
  }

  String getDescription() {
    return _description;
  }
}
