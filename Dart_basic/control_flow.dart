void main(List<String> args) {
  int salary = 2000;
  //IF-ELSE 1
  if (salary > 2500) {
    print("You got a promotion.Congratulations!!");
  } else {
    print("You need to try and work harder.");
  }

  //IF-ELSE 2 (Conditional Exppression)
  (salary > 2500)
      ? print("You got a promotion.Congratulations!!")
      : print("You need to try and work harder.");

  //SWITCH-CASE
  //Applying Switch Case on Strings(applicable in only String and int)
  String A = "1";
  switch (A) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Fair");
      break;
    case "D":
      print("Poor");
      break;
    default:
      print("Invalid choice");
  }
}
