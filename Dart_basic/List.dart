/*
Là một cấu trúc dữ liệu để sắp xếp thứ tự các đối tượng.
Các đối tượng trong List thì có cùng kiểu dữ liệu với nhau
Phần tử đầu tiên sẽ có index = 0
Thứ tự các phần tử trong một danh sách rất quan trọng.
 */
void main(List<String> args) {
  //Making a list iteral
  var numbers = [1, 2, 3];

  //Dynamic type default
  numbers = []; //Empty list but not null

  /*
  2 ways to declare a list
   - List<type> list_name = [];
   - var list_name = <type>[];
  <> is a generic type
   */

  //Elements of a list
  var numbs = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  //Accessing elements i of a list
  final second = numbs[1];
  print(second); // 2

  // takes a index of a element and returns the first index
  // if the element is not found it returns -1
  final index = numbs.indexOf(9);
  print(index); // 8
  final index1 = numbs.indexOf(0);
  print(index1); // -1

//assigning a value to a index i
  numbs[0] = 0; // 0 will be assigned to the first index (replacing 1)

//Adding elements to a list
  numbs.add(10); // adds 10 to the end of the list
  print(numbs); // [0,2,3,4,5,6,7,8,9,10]
//remove elements from a list
  numbs.remove(10); // removes 10 from the list
  print(numbs); // [0,2,3,4,5,6,7,8,9]

  //Mutable list & Immutable list
  /*
  liên quan tới địa chỉ vùng nhớ. Tức là con trỏ.
  var List thì mọi chuyện khá là đơn giản. Khi nó là biến. Nó có quyền:
    - Thay đổi sang vùng nhớ khác (ví dụ 2)
    - Thay đổi nội dung của nó (ví dụ 1)
  final List thì mọi chuyện sẽ phúc tạp hơn. Khi con trỏ sẽ trỏ tới vùng nhớ lúc được cấp phát lần đầu tiên. Nó sẽ:
    - Không chuyển sang vùng nhớ khác hay gán con trỏ khác cho nó (ví dụ 2)
    - Nhưng nó có thể thay đổi nội dung liên quan tới vùng nhớ mà nó trỏ vào (ví dụ 1)
   */
  var languages = ['iOS', 'Android', 'Flutter', 'Kotlin', 'Swift', 'Dart'];
  languages.add("Java");
  languages.remove("android");
  print(languages); // [iOS, Flutter, Kotlin, Swift, Dart, Java]

  final names = ['John', 'Doe', 'Smith'];
  names.add("Jane"); //add successful
  names.remove("John"); //remove successful
  print(names); // [Doe, Smith, Jane]

//reassigning a list
  languages = ['English', 'French', 'Spanish'];
  print(languages); // [English, French, Spanish]
  //names = ['Dũng', 'Đức', 'Đạt']; //error because names is final

//Deeply immutable lists
//final names = const ['Tèo', 'Tí', 'Na', 'Lam', 'Hồng', 'Dần']; => ko thể thay đổi nội dung của nó và vùng trỏ tới

//unmodifiableList được tạo ra từ modifiableList lúc run-time. Và nó sẽ không bị thay đổi được.
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(
      modifiableList); // => unmodifiableList sẽ không bị thay đổi được
  print(unmodifiableList);

//List Properties
  const drinks = ['water', 'milk', 'juice', 'soda'];
  print(drinks.first); // water
  print(drinks.last); // soda
//Checking if a list contains any elements
  print(drinks.isEmpty); // false
  print(drinks.isNotEmpty); // true

//Length of a list
  print(drinks.length); // 4

//Loop
  for (var i = 0; i < drinks.length; i++) {
    print(drinks[i]); // water, milk, juice, soda
  } // for loop
  for (var item in drinks) {
    print(item); // water, milk, juice, soda
  } // forEach loop

  //Spread operator
  const drinks1 = ['water', 'milk', 'juice', 'soda'];
  const drinks2 = ['coffee', 'tea'];
  const drinks3 = [
    "softdrink",
    ...drinks1,
    "beer",
    ...drinks2
  ]; // spread operator
  print(drinks3); // [softdrink, water, milk, juice, soda, beer, coffee, tea]

  //spread operator with null-aware
  const cakes1 = ['chocolate', 'vanilla'];
  List<String>? cakes2;
  final cakes3 = [...?cakes2, ...cakes1]; //null spread operator (...?)
  print(cakes3); // [chocolate, vanilla]

//Collection if
//có thể thêm 1 câu lệnh điều kiện if vào trong 1 List,
// để quyết định rằng có nên thêm vào 1 phần tử tiếp theo hay không
  const isOkay = false;
  const lists = ['A', 'B', if (isOkay) 'C', 'D'];
  print(lists); // [A, B, D]

//Collection for
  const list5 = ['1', '2', '3', '4', '5'];
  var list6 = ['0', for (var item in list5) item, '6', '7'];
  print(list6);
}
