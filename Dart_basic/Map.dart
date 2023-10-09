//Map Type trong Dart cũng là một cấu trúc dữ liệu tập hợp.
/*
- Các phần tử là 1 cặp giá trị, bao gồm key & value
- Không có yêu cầu về thứ tự trong Map
- Các key phải cũng kiểu dữ liệu với nha và value cũng vậy
- Giữa key & value có thể khác kiểu dữ liệu
- 1 key trong Map là tồn tại duy nhất.
- Để tìm tới giá trị của một phần tử thì phải dựa vào key của nó
*/

void main(List<String> args) {
//Khai báo 1 Map
  final Map<String, int> emptyMap = {};

//  final emptyMap = <String, int>();

// final emptySonmething = {};
/*

Cách 3 thì tạo 1 Map rỗng mà 
không cho biết kiểu dữ liệu như thế nào, 
nên chúng sẽ nhận kiểu như sau <dynamic, dynamic>
 */

  Map<String, String> countryCapital = {
    'USA': 'Washington D.C',
    'Vietnam': 'Hanoi',
    'Japan': 'Tokyo'
  };
  print(countryCapital); //print map
// Access Value From Key
  print(countryCapital['USA']); // Washington D.C
  print(countryCapital['Vietnam']);
//Map Properties
  print(countryCapital.length); // 3
//isEmpty => check empty
  print(countryCapital.isEmpty); // false
//check isNotEmpty
  print(countryCapital.isNotEmpty); // true
//print key
  print(
      'All key of Map is: ${countryCapital.keys}'); // All key of Map is: (USA, Vietnam, Japan)
//print all value
  print(
      'All value of Map is: ${countryCapital.values}'); // All value of Map is: (Washington D.C, Hanoi, Tokyo)

  //Adding Element
  countryCapital['Chiana'] = 'Bejing';
  //Updating An Element
  countryCapital['USA'] = 'New York';
  ;
  print(countryCapital);

  //Map Methods
  //Convert Maps Keys & Values To List
  Map<String, double> exenses = {
    'sun': 3000.0,
    'mon': 3100.0,
    'tue': 3234.0,
  };
  //print all keys without list
  print(exenses.keys);
  print(exenses.values);
  //print all key and value with List
  print(exenses.keys.toList());
  print(exenses.values.toList());

  //Check Map Contains Specific Key/Value Or Not => true/false
  //for key
  print(exenses.containsKey('sum')); //false
  print(exenses.containsKey('sun')); //true

  //for value
  print(exenses.containsValue(3000)); //true
  print(exenses.containsValue(2000)); //false

  //Removing Items From Map
  countryCapital.remove('USA');
  print(countryCapital);

  //Looping Over Element Of Map
  //for in
  for(MapEntry country in countryCapital.entries){
    print('----${country.key} - ${country.value}----');
  }
  //for each
  countryCapital.forEach((key, value) => print('----$key - $value----'));

//Remove Where => set condition to remove
exenses.removeWhere((key, value) => value >=3100);
print(exenses);
}
