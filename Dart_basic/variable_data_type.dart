void main(List<String> args) {
  var nameOFVariable; // Default with Dynamic type

//String
  String name = 'Toan';
//Number
  num age = 21;
//Boolean
  bool hasChildren = false;
  bool hasParent = true;
//List
  List informations = ['Toan', '21', 'has parent', 'has not children'];
//Show data
  print(name);
  print(age);
  print(hasChildren);
  print(hasParent);
  print(informations);

//show data with ${variable}
  print("Show the personal information: This is ${name}, ${age} years old。よろしくお願いします.");


}
