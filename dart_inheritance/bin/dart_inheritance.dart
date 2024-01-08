//Todo: Single Inheritance
class Person {
  String? name;
  int? age;
  void display() {
    print("Person name is ${name} and age is ${age}");
  }
}

class Student extends Person {
  int? rollNo;

  void display() {
    super.display();
    print("Student rollNo is ${rollNo}");
  }
}

void main(List<String> arguments) {
  print("Hello World!");
  Person p = Person();
  p.name = "John";
  p.age = 30;
  p.display();

  Student s = Student();
  s.name = "Peter";
  s.age = 20;
  s.rollNo = 10;
  s.display();
}
