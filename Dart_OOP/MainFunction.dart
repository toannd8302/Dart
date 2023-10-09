import 'dart:io';

import 'Vehicle.dart';

class MainFunction {
  //create a List of Vehicle
  List<Vehicle> listVehicle = [];
  //create a function to add new vehicle
  void addVehicle() {
    //input information of vehicle
    print("Please enter ID of vehicle: ");
    String? inputID = stdin.readLineSync();
    print("Please enter name of vehicle: ");
    String? inputName = stdin.readLineSync();
    print("Please enter color of vehicle: ");
    String? inputColor = stdin.readLineSync();
    print("Please enter price of vehicle: ");
    String? inputPrice = stdin.readLineSync();
    print("Please enter brand of vehicle: ");
    String? inputBrand = stdin.readLineSync();
    print("Please enter product year of vehicle(yyyy-MM-DD): ");
    String? inputProductYear = stdin.readLineSync();
    //convert inputPrice to double
    double? price = double.tryParse(inputPrice!);
    //convert inputProductYear to DateTime
    DateTime? productYear = DateTime.tryParse(inputProductYear!);
    //create a new vehicle
    Vehicle newVehicle = Vehicle(
        idVehicle: inputID,
        nameVehicle: inputName,
        colorVehicle: inputColor,
        priceVehicle: price,
        brandVehicle: inputBrand,
        productYear: productYear);
    listVehicle.add(newVehicle);
  }

  void ShowAllVehicle() {
    if(listVehicle.isEmpty){
      print("List is empty");
    }
    for (var vehicle in listVehicle) {
      print(vehicle.toString());
    }
  }
}
