import 'camera.dart';

void main() {
  print("Hello World");
  //Todo: create object
  // Student student = Student();

  // //Todo: set value
  // student.setAge(20);
  // student.setName('Toàn');
  // print(student.getAge());
  // print(student.getName());

  Camera c = Camera();
  c.id = 25;
  c.name = "Sony";
  c.price = 1000;
  print('${c.id} ${c.name} ${c.price}');
}
