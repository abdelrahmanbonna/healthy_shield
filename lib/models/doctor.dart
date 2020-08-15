class Doctor {
  String _iD;
  String _email;
  String _mobile;
  String _firstName;
  String _lastName;
  String _specialty;

  void setAllDataUsage(fname, lname, mobile, specialty, email) {
    _firstName = fname;
    _lastName = lname;
    _email = email;
    _specialty = specialty;
    _mobile = mobile;
  }

  void setID(id) {
    _iD = id;
  }

  void setEmail(email) {
    _email = email;
  }

  void setFirstName(name) {
    _firstName = name;
  }

  void setLasName(name) {
    _lastName = name;
  }

  void setMobile(mobile) {
    _mobile = mobile;
  }

  void setSpecialty(specialty) {
    _specialty = specialty;
  }

  getID() {
    return _iD;
  }

  getEmail() {
    return _email;
  }

  getFirstName() {
    return _firstName;
  }

  getLasName() {
    return _lastName;
  }

  getMobile() {
    return _mobile;
  }

  getSpecialty() {
    return _specialty;
  }
}
