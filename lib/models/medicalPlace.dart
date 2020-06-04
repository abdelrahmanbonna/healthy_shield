class MedicalPlace {
  String _ID, _Name, _Phone, _Address, _Email;
  double _VisitFees;
  void setAllDataUsage(email, name, phone, address, visitFee) {
    _Email = email;
    _Name = name;
    _Phone = phone;
    _Address = address;
    _VisitFees = visitFee;
  }

  void setID(id) {
    _ID = id;
  }

  void setEmail(email) {
    _Email = email;
  }

  void setName(name) {
    _Name = name;
  }

  void setPhone(phone) {
    _Phone = phone;
  }

  void setAddress(address) {
    _Address = address;
  }

  void setVisitFees(visitFee) {
    _VisitFees = visitFee;
  }

  getID() {
    return _ID;
  }

  getEmail() {
    return _Email;
  }

  getName() {
    return _Name;
  }

  getPhone() {
    return _Phone;
  }

  getAddress() {
    return _Address;
  }

  getVisitFees() {
    return _VisitFees;
  }
// ignore: non_constant_identifier_names
}
