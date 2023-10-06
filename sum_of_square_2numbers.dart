import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //10 bài code

  void FirstandLast(int a) {
    //a có 3 chữ số
    //Là 2 chữ số đầu và 2 chữ số cuối của n, cách nhau bởi dấu cách (nếu 2 chữ số là 0 thì in 00, nếu 2 chữ số mà có 0 phía trước thì vẫn in, vd 05)
    String numb = a.toString();
    String numb1 = numb.substring(0, 2); // ko tính vị trí end
    String numb2 = numb.substring(1, 3);
    print('$numb1 $numb2');
  }

  FirstandLast(505);
  FirstandLast(500);
  FirstandLast(420);
  //Viết chương trình nhập vào 3 số nguyên a, b, c; in ra số lớn nhất, nếu 3 số bằng nhau thì in dấu "="
  void Max(int a, int b, int c) {
    print('+' + '-' * 50 + '+' );
   
    if (a > b && a > c) {
      print('|' + 'MAX is $a'.padLeft(25).padRight(50) + '|');
    } else if (b > a && b > c) {
      print('|' + 'MAX is $b'.padLeft(25).padRight(50) + '|');
    } else if (c > a && c > b) {
      print('|'+'MAX is $c'.padLeft(25).padRight(50)+'|');
    } else {
      print('|' + 'a = b = c'.padLeft(25).padRight(50) + '|');
    }
    print('+' + '-' * 50 + '+' );
  }

  int a, b, c;
  print('a= ');
  //validate
  var isValid = false;
  String? inputA;
  String? inputB;
  String? inputC;

  while (!isValid) {
    print('Enter a: ');
    inputA = stdin.readLineSync();

    if (inputA == null || inputA.isEmpty) {
      print('Không được để trống! Hãy nhập lại giá trị của a!');
      continue; // Quay lại vòng lặp để nhập lại
    } else {
      a = int.parse(inputA);
    }

    print('Enter b: ');
    inputB = stdin.readLineSync();

    if (inputB == null || inputB.isEmpty) {
      print('Không được để trống! Hãy nhập lại giá trị của b!');
      continue;
    } else {
      b = int.parse(inputB);
    }

    print('Enter c: ');
    inputC = stdin.readLineSync();

    if (inputC == null || inputC.isEmpty) {
      print('Không được để trống! Hãy nhập lại giá trị của c!');
      continue;
    } else {
      c = int.parse(inputC);
    }

    // Kiểm tra hợp lệ của a, b, và c ở đây (các kiểm tra khác)

    isValid = true; // Đã nhập đủ giá trị và hợp lệ
    Max(a, b, c);
  }

// Sau khi thoát khỏi vòng lặp, bạn có thể tiếp tục xử lý giá trị của a, b, và c.
}
