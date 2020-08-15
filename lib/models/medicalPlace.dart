class MedicalPlace {
  String _iD, _name, _phone, _address, _email;
  double _visitFees;
  void setAllDataUsage(email, name, phone, address, visitFee) {
    _email = email;
    _name = name;
    _phone = phone;
    _address = address;
    _visitFees = visitFee;
  }

  void setID(id) {
    _iD = id;
  }

  void setEmail(email) {
    _email = email;
  }

  void setName(name) {
    _name = name;
  }

  void setPhone(phone) {
    _phone = phone;
  }

  void setAddress(address) {
    _address = address;
  }

  void setVisitFees(visitFee) {
    _visitFees = visitFee;
  }

  getID() {
    return _iD;
  }

  getEmail() {
    return _email;
  }

  getName() {
    return _name;
  }

  getPhone() {
    return _phone;
  }

  getAddress() {
    return _address;
  }

  getVisitFees() {
    return _visitFees;
  }
}
