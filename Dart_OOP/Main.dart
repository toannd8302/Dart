import 'Vehicle.dart';
import 'dart:io';
import 'MainFunction.dart';

main(List<String> args) {
  MainFunction mainFunction = MainFunction();
  late int choices;
  // Create Menu for user
 do {
    print("+" + "-" * 50 + "+");
    print("|" +
        "Welcome to Vehicle Management System".padLeft(25).padRight(50) +
        "|");
    print("|" + "-" * 50 + "|");
    print("|" + "1. Add new vehicle".padRight(50).padLeft(25) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "2. Check exist vehicle".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "3. Update vehicle".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "4. Delete vehicle".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "5. Search vehicle".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "6. Show all vehicle".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "7. Save all vehicle to file".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "8. Print all vehicle from file".padRight(50) + "|");
    print("|" + "-" * 50 + "|");
    print("|" + "9. Exit".padRight(50) + "|");
    print("+" + "-" * 50 + "+");
    print("Please enter your choice: ");
    String inutChoice = stdin.readLineSync()!;
    choices = int.parse(inutChoice);
    switch (choices) {
      case 1:
        mainFunction.addVehicle();
        break;
      case 2:
        //mainFunction.checkExistVehicle();
        break;

      case 3:
        //mainFunction.UpdateVehicle();
        break;

      case 4:
        //mainFunction.DeleteVehicle();
        break;

      case 5:
        //mainFunction.SearchVehicle();
        break;

      case 6:
        mainFunction.ShowAllVehicle();
        break;

      case 7:
        //mainFunction.SaveAllVehicleToFile();
        break;

      case 8:
        //mainFunction.PrintAllVehicleFromFile();
        break;

      default:
        print("Goodbye!");
        return;
    }
  } while (choices >= 1 && choices <=8);
}
