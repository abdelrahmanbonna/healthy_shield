class Visit {
  Visit({this.id});
  final String id;
  String doctor_name,
      doctor_email,
      doctor_phone,
      doctor_specialization,
      medicalplaces_name,
      medicalplaces_email,
      medicalplaces_phone,
      medical_address;

  DateTime date;
  void setAllDataUsage(doc_name, doc_email, doc_phone, doc_spec, medplace_name,
      medplace_email, medplace_phone, medplace_address, datee) {
    doctor_name = doc_name;
    doctor_email = doc_email;
    doctor_phone = doc_phone;
    doctor_specialization = doc_spec;
    medicalplaces_name = medplace_name;
    medicalplaces_email = medplace_email;
    medicalplaces_phone = medplace_phone;
    medical_address = medplace_address;
    date = datee;
  }

  getDoctorName() {
    return doctor_name;
  }

  getDoctorEmail() {
    return doctor_email;
  }

  getDoctorPhone() {
    return doctor_phone;
  }

  getDoctorSpecial() {
    return doctor_specialization;
  }

  getMedplaceName() {
    return medicalplaces_name;
  }

  getMedplacePhone() {
    return medicalplaces_phone;
  }

  getMedplaceAddress() {
    return medical_address;
  }

  getMedplaceEmail() {
    return medicalplaces_email;
  }

  getDate() {
    return date;
  }
}
