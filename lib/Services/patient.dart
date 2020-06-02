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

  void login() {}

  void register() {}

  void continueRegistration() {
    _Accepted = true;
  }
}
