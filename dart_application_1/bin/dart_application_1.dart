//Todo: Imlement  Encapsulation

class Student {
  // private properties
  String? _name; //! _ means private
  int? _age; //! ? means nullable
  final String _school =
      'FPT'; //! final is  (read-only)   (cannot be changed)
//getter & settter
  String getName() {
    return this._name!;
  }

  int getAge() {
    return this._age!; //! ! means non-nullable
  }

  String getSchool() {
    return this._school;
  }

  //setter
  void setName(String name) {
    this._name = name;
  }

  void setAge(int age) {
    if (age < 0) {
      this._age = 0;
    } else {
      this._age = age;
    }
  }

  //! _school is read-only so we don't need setter for it


}

// void main() {
//   print("Hello World");
//   //Todo: create object
//   Student student = Student();

//   //Todo: set value
//   student._age = 20;
//   student._name = 'Toàn';
//   print(student._age);
//   print(student._name);

// }
