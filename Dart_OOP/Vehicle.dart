class Vehicle {
/*
Every vehicle has some attributes such as ID_Vehicle,
Name_Vehicle, color_Vehicle, price_Vehicle, brand_Vehicle, type, productYear
*/
  String? _idVehicle;
  String? _nameVehicle;
  String? _colorVehicle;
  double? _priceVehicle;
  String? _brandVehicle;
  DateTime? _productYear;



  Vehicle(
      {String? idVehicle,
      String? nameVehicle,
      String? colorVehicle,
      double? priceVehicle,
      String? brandVehicle,
      DateTime? productYear}) {
    this._idVehicle = idVehicle;
    this._nameVehicle = nameVehicle;
    this._colorVehicle = colorVehicle;
    this._priceVehicle = priceVehicle;
    this._brandVehicle = brandVehicle;
    this._productYear = productYear;
  }
  //Getter & Setter
  String? get idVehicle => _idVehicle;
  set idVehicle(String? value) => _idVehicle = value;
  String? get nameVehicle => _nameVehicle;
  set nameVehicle(String? value) => _nameVehicle = value;
  String? get colorVehicle => _colorVehicle;
  set colorVehicle(String? value) => _colorVehicle = value;
  double? get priceVehicle => _priceVehicle;
  set priceVehicle(double? value) => _priceVehicle = value;
  String? get brandVehicle => _brandVehicle;
  set brandVehicle(String? value) => _brandVehicle = value;
  DateTime? get productYear => _productYear;
  set productYear(DateTime? value) => _productYear = value;

  //toString
  @override
  String toString() {
    return 'Vehicle{_idVehicle: $_idVehicle, _nameVehicle: $_nameVehicle, _colorVehicle: $_colorVehicle, _priceVehicle: $_priceVehicle, _brandVehicle: $_brandVehicle, _productYear: $_productYear}';
  }
}
