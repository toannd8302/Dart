void main(List<String> args) {
  //Arithmetic operators
  double a = 10;
  double b = 20;
  late double c;
  c = a + b;
  print("a + b = $c");
  c = a - b;
  print("a - b = $c");
  c = a * b;
  print("a * b = $c");
  c = a / b;
  print("a / b = $c");
  print("a~/b = ${a~/b}"); // chia lấy phần nguyên mà thôi

//Unary minus operator => phép đảo bit
int x = 5; // Binary representation: 00000101
int y = ~x; // Binary representation: 11111010
print(y); // Kết quả là -6


}