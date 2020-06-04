class Doctor {
  String _ID;
  String _Email;
  String _Mobile;
  String _FirstName;
  String _LastName;
  String _Specialty;

  void setAllDataUsage(fname, lname, mobile, specialty, email) {
    _FirstName = fname;
    _LastName = lname;
    _Email = email;
    _Specialty = specialty;
    _Mobile = mobile;
  }

  void setID(id) {
    _ID = id;
  }

  void setEmail(email) {
    _Email = email;
  }

  void setFirstName(name) {
    _FirstName = name;
  }

  void setLasName(name) {
    _LastName = name;
  }

  void setMobile(mobile) {
    _Mobile = mobile;
  }

  void setSpecialty(specialty) {
    _Specialty = specialty;
  }

  getID() {
    return _ID;
  }

  getEmail() {
    return _Email;
  }

  getFirstName() {
    return _FirstName;
  }

  getLasName() {
    return _LastName;
  }

  getMobile() {
    return _Mobile;
  }

  getSpecialty() {
    return _Specialty;
  }
}
