//Todo: multilevel inheritance
class Car {
  //properties
  String? name;
  double? price;
}

class Tesla extends Car {
  void display() {
    print("Tesla name is ${name} and price is ${price}");
  }
}

class Model3 extends Tesla {
  String? color;
  @override
  void display() {
    super.display();
    print("Color is $color ");
  }
}

main(List<String> args) {
  Model3 m3 = Model3();
  m3.name = "Tesla model 3";
  m3.price = 50000;
  m3.color = "Red";
  m3.display();
}
