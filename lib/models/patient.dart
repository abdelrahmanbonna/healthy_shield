import 'dart:math';

class Patient {
  //TODO find another way
  Patient({this.email, this.password});

  final String email, password;
  // ignore: non_constant_identifier_names
  String _ID,
      _FirstName, // ignore: non_constant_identifier_names
      _LastName, // ignore: non_constant_identifier_names
      _Mobile, // ignore: non_constant_identifier_names
      _Address, // ignore: non_constant_identifier_names
      _BloodType, // ignore: non_constant_identifier_names
      _Gender, // ignore: non_constant_identifier_names
      _Job, // ignore: non_constant_identifier_names
      _MobileFee, // ignore: non_constant_identifier_names
      _CarModel, // ignore: non_constant_identifier_names
      _NoOfCars, // ignore: non_constant_identifier_names
      _BMI; // ignore: non_constant_identifier_names

  DateTime _BirthDate; // ignore: non_constant_identifier_names
  int _Height, // ignore: non_constant_identifier_names
      _Weight, // ignore: non_constant_identifier_names
      _NoOfDep, // ignore: non_constant_identifier_names
      _MonthlyIncome; // ignore: non_constant_identifier_names

  bool _Accepted, // ignore: non_constant_identifier_names
      _CuttedArm, // ignore: non_constant_identifier_names
      _CuttedLeg, // ignore: non_constant_identifier_names
      _ChronicDisease; // ignore: non_constant_identifier_names

  void setAllDataUsage(
      fname,
      lname,
      mobile,
      address,
      birthdate,
      height,
      weight, // ignore: non_constant_identifier_names
      gender,
      accepted) {
    _FirstName = fname;
    _LastName = lname;
    _Address = address;
    _Mobile = mobile;
    _BirthDate = birthdate;
    _Height = height;
    _Weight = weight;
    _Gender = gender;
    _Accepted = accepted;
  }

  void setID(id) {
    _ID = id;
  }

  getID() {
    return _ID;
  }

  setPatientBMI() {
    var bmi = _Weight / pow(_Height / 100, 2);
    _BMI = bmi.toStringAsFixed(1);
  }

  getBMI() {
    return _BMI;
  }

  void setFirstName(name) {
    _FirstName = name;
  }

  void setLasName(name) {
    _LastName = name;
  }

  void setAddress(address) {
    _Address = address;
  }

  void setMobile(mobile) {
    _Mobile = mobile;
  }

  void setGender(gender) {
    _Gender = gender;
  }

  void setBirthdate(date) {
    _BirthDate = date;
  }

  void setHeight(h) {
    _Height = h;
  }

  void setWeight(w) {
    _Weight = w;
  }

  void setAccepted(a) {
    _Accepted = a;
  }

  void setJob(job) {
    _Job = job;
  }

  void setNoOfDependencies(no) {
    _NoOfDep = no;
  }

  void setArmOff(arm) {
    _CuttedArm = arm;
  }

  void setLegOff(leg) {
    _CuttedLeg = leg;
  }

  void setChronicDisease(chronic) {
    _ChronicDisease = chronic;
  }

  void setMonthlyIncome(income) {
    _MonthlyIncome = income;
  }

  void setNoOfCars(cars) {
    _NoOfCars = cars;
  }

  void setCarModel(car) {
    _CarModel = car;
  }

  void setBloodType(blood) {
    _BloodType = blood;
  }

  void setMobileFees(fee) {
    _MobileFee = fee;
  }

  getFirstName(name) {
    return _FirstName;
  }

  getLasName() {
    return _LastName;
  }

  getAddress() {
    return _Address;
  }

  getMobile() {
    return _Mobile;
  }

  getGender() {
    return _Gender;
  }

  getBirthdate() {
    return _BirthDate;
  }

  getHeight() {
    return _Height;
  }

  getWeight() {
    return _Weight;
  }

  getAccepted(a) {
    return _Accepted;
  }

  getJob() {
    return _Job;
  }

  getNoOfDependencies() {
    return _NoOfDep;
  }

  getArmOff() {
    return _CuttedArm;
  }

  getLegOff() {
    return _CuttedLeg;
  }

  getChronicDisease() {
    return _ChronicDisease;
  }

  getMonthlyIncome() {
    return _MonthlyIncome;
  }

  getNoOfCars() {
    return _NoOfCars;
  }

  getCarModel() {
    return _CarModel;
  }

  getBloodType() {
    return _BloodType;
  }

  getMobileFees() {
    return _MobileFee;
  }
}
