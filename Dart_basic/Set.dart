/*
SET is a collection of unique items - cấu trúc dữ liệu tập hợp.
  - Là tập hợp mà mỗi phần tử tồn tại trong đó là duy nhất
  - Các phần tử có cùng kiểu dữ liệu
  - Thứ tự các phần tử không ảnh hưởng và không quan trong. 
                  Set luôn duy trì một thứ tự đặc biết dựa theo giá trị của các phần tử.
  - index trong Set không có ý nghĩa
  - Set có tốc độ truy cập & xử lý nhanh hơn List. Đặt biệt với các dữ liệu lớn
  - Ta có thể sử dụng các phép toán logic trên Set


 */

void main(List<String> args) {
  final Set<int> someSet = {};
//or
  //final someSet = <int>{};

  final anotherSet = {1, 2, 3, 1};
  print(anotherSet); // {1,2,3}
//contains
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(4)); // false}

  //add
  anotherSet.add(4);
  print(anotherSet); // {1,2,3,4}

  //remove
  anotherSet.remove(1);

  //add all
  anotherSet.addAll({5, 6, 7});// {2,3,4,5,6,7}


  //2 phép logic cơ bản cho Set, đó là giao (Intersections) và hợp (Unions).
  //Giao
  final setA = {1, 2, 3, 4};
  final setB = {3, 4, 5, 6};
  final intersection = setA.intersection(setB);
  print(intersection); // {3,4}

  //Hợp

  final union = setA.union(setB);
  print(union); // {1,2,3,4,5,6}

}