void main(List<String> args) {
  String greeting = 'Hello World!';

  print('Substring: ${greeting.substring(0, 4)}'); //Lấy ra chuổi Hello
  //Lấy ra độ dài chuỗi
  print(greeting.length); //12 kí tự
  //In ra 1 chuỗi liên tục => Dùng *
  print(greeting * 2); //Hello World!Hello World!

//Loại bỏ khoảng trắng đầu cuối = trim()
  String input = "   Hello World!   ";
  String trimed = input.trim();
  print(trimed); //Hello World!
//split() => Tách chuỗi thành mảng
  List Strings = greeting.split(" ");
  print(Strings); //[Hello, World!]

  /*
  The following function takes two integers
   as parameters. Make it return a string containing both integers separated by a space. 
   For example, stringify(2, 3) should return '2 3'.
   */
  String stringInfy(int a, int b){
    return '$a $b';
  }
  print(stringInfy(2, 3)); //2 3
}
