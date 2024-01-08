/*
todo: 1 sv IT có thể vừa có thể là Hacker vừa là Developer vừa là Gamer
! Nếu kế thừa toàn diện thì sẽ làm ra diamond problem 
! Bản chất chúng ta phải lấy các hành động của 3 class Hacker, Developer, Gamer để sử dụng đúng mục đích
 */
//Todo: Tạo các interface
abstract class Hacker {
  String sleep(String time);
  void hack();
}

abstract class Developer {
  String sleep(String time);
  void code();
}

abstract class Gamer {
  String sleep(String time);
  void playGame();
}

//Todo: Tạo class ItStudent kế thừa 3 interface trên
class ItStudent implements Hacker, Developer, Gamer {
  @override
  void hack() {}

  @override
  void code() {}

  @override
  void playGame() {}

  @override
  String sleep(String time) {
    return time;
  }
}

void main(List<String> args) {
  Gamer itGamer = ItStudent();
  print(itGamer.sleep("Gamer work on 8h morning "));

  Hacker itHacker = ItStudent();
  itHacker.hack();
  print(itHacker.sleep("Hacker work on evening and sleep in the morning"));

  Developer itDeveloper = ItStudent();
  itDeveloper.code();
  print(
      itDeveloper.sleep("Developer work on morning and sleep in the evening"));
}
