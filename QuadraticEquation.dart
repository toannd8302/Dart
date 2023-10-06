import 'dart:io';
import 'dart:math';

void main() {
  double a;
  double b;
  double c;
  double denta;
  double x1;
  double x2;
  bool inValid = false;

  while (!inValid) {
    try {
      print('Enter a: ');
      var inputA = stdin.readLineSync();
      if (inputA == null) {
        throw Exception('Không được để trống! Hãy nhập lại giá trị của a!');
      }
      a = double.tryParse(inputA) ?? 0; // Nhập không hợp lệ thì a = 0
      if (a == 0) {
        throw Exception('a phải khác 0');
      }

      print('Enter b: ');
      var inputB = stdin.readLineSync();
      if (inputB == null) {
        throw Exception('Không được để trống! Hãy nhập lại giá trị của b!');
      }
      b = double.tryParse(inputB) ?? 0;

      print('Enter c: ');
      var inputC = stdin.readLineSync();
      if (inputC == null) {
        throw Exception('Không được để trống! Hãy nhập lại giá trị của c!');
      }
      c = double.tryParse(inputC) ?? 0;

      // Tính delta
      denta = b * b - 4 * a * c;

      // Bắt đầu in kết quả trong hộp chữ nhật
      print('+' + '-' * 50 + '+');
      print('|' + ' ' * 50 + '|');

      if (denta < 0) {
        // Phương trình vô nghiệm
        print('|' + ' Phương trình vô nghiệm'.padRight(50) + '|');
      } else if (denta == 0) {
        // Phương trình có nghiệm kép
        x1 = -b / (2 * a);
        print('|' + ' Phương trình có nghiệm kép: x1 = x2 = $x1'.padRight(50) + '|');
      } else {
        // Phương trình có 2 nghiệm phân biệt
        x1 = (-b + sqrt(denta)) / (2 * a);
        x2 = (-b - sqrt(denta)) / (2 * a);
        print('|' + ' Phương trình có 2 nghiệm phân biệt:'.padRight(50) + '|');
        print('|' + ' x1 = $x1'.padRight(50) + '|');
        print('|' + ' x2 = $x2'.padRight(50) + '|');
      }

      // Kết thúc in kết quả trong hộp chữ nhật
      print('|' + ' ' * 50 + '|');
      print('+' + '-' * 50 + '+');

      inValid = true;
    } catch (e) {
      print('Error: $e,　正確ようにしてください。');
    }
  }
}
