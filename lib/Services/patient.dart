class Patient {
  Patient({this.email, this.password});

  final String email, password;
  String _ID,
      _FirstName,
      _LastName,
      _Mobile,
      _Address,
      _BloodType,
      _Gender,
      _Job,
      _MobileFee,
      _CarModel,
      _NoOfCars;
  DateTime _BirthDate;
  int _Height, _Weight, _NoOfDep, _MonthlyIncome;
  bool _Accepted, _CuttedArm, _CuttedLeg, _ChronicDisease;

  void setAllDataUsage(fname, lname, mobile, address, birthdate, height, weight,
      gender, accepted) {
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
