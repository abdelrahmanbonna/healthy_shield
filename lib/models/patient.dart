import 'dart:math';

class Patient {
  Patient(this.iD);
  String email, _password;

  String iD,
      _firstName,
      _lastName,
      _mobile,
      _address,
      _bloodType,
      _gender,
      _job,
      _mobileFee,
      _carModel,
      _noOfCars,
      _bMI,
      _insurancePercentage;

  DateTime _birthDate;
  int _height, _weight, _noOfDep, _monthlyIncome;

  bool _accepted, _cuttedArm, _cuttedLeg, _chronicDisease;

  void setAllDataUsage(fname, lname, mobile, address, birthdate, height, weight,
      gender, accepted, percentage) {
    _firstName = fname;
    _lastName = lname;
    _address = address;
    _mobile = mobile;
    _birthDate = birthdate;
    _height = height;
    _weight = weight;
    _gender = gender;
    _accepted = accepted;
    _insurancePercentage = percentage;
  }

  setPatientBMI() {
    var bmi = _weight / pow(_height / 100, 2);
    _bMI = bmi.toStringAsFixed(1);
  }

  getBMI() {
    return _bMI;
  }

  setPassword(newPass) {
    _password = newPass;
  }

  getPassword() {
    return _password;
  }

  void setFirstName(name) {
    _firstName = name;
  }

  void setLasName(name) {
    _lastName = name;
  }

  void setAddress(address) {
    _address = address;
  }

  void setMobile(mobile) {
    _mobile = mobile;
  }

  void setInsurancePercentage(percentage) {
    _insurancePercentage = percentage;
  }

  void setGender(gender) {
    _gender = gender;
  }

  void setBirthdate(date) {
    _birthDate = date;
  }

  void setHeight(h) {
    _height = h;
  }

  void setWeight(w) {
    _weight = w;
  }

  void setAccepted(a) {
    _accepted = a;
  }

  void setJob(job) {
    _job = job;
  }

  void setNoOfDependencies(no) {
    _noOfDep = no;
  }

  void setArmOff(arm) {
    _cuttedArm = arm;
  }

  void setLegOff(leg) {
    _cuttedLeg = leg;
  }

  void setChronicDisease(chronic) {
    _chronicDisease = chronic;
  }

  void setMonthlyIncome(income) {
    _monthlyIncome = income;
  }

  void setNoOfCars(cars) {
    _noOfCars = cars;
  }

  void setCarModel(car) {
    _carModel = car;
  }

  void setBloodType(blood) {
    _bloodType = blood;
  }

  void setMobileFees(fee) {
    _mobileFee = fee;
  }

  getFirstName() {
    return _firstName;
  }

  getLasName() {
    return _lastName;
  }

  getAddress() {
    return _address;
  }

  getMobile() {
    return _mobile;
  }

  getGender() {
    return _gender;
  }

  getBirthdate() {
    return _birthDate;
  }

  getHeight() {
    return _height;
  }

  getWeight() {
    return _weight;
  }

  getAccepted() {
    return _accepted;
  }

  getJob() {
    return _job;
  }

  getNoOfDependencies() {
    return _noOfDep;
  }

  getArmOff() {
    return _cuttedArm;
  }

  getLegOff() {
    return _cuttedLeg;
  }

  getChronicDisease() {
    return _chronicDisease;
  }

  getMonthlyIncome() {
    return _monthlyIncome;
  }

  getNoOfCars() {
    return _noOfCars;
  }

  getCarModel() {
    return _carModel;
  }

  getBloodType() {
    return _bloodType;
  }

  getMobileFees() {
    return _mobileFee;
  }

  getInsurancePercentage() {
    return _insurancePercentage;
  }
}
