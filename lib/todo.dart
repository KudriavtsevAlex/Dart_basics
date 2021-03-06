import 'package:dart_basics/binary.dart';
import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/collection_of_num.dart';
import 'package:dart_basics/collection_of_words.dart';
import 'package:dart_basics/collection_of_digit.dart';
import 'package:dart_basics/point.dart';
import 'package:dart_basics/user.dart';

void main() {
  print('---------- 1 ----------');
  print('Наибольший общий делить: ${DelCalc(30, 18).gcd()}');
  print('Наименьшее общее кратное: ${DelCalc(30, 18).lcm()}');
  print('---------- 2 ----------');

  Binary(10).toDec();
  Binary(33).toBinary();

  print('---------- 3 ----------');

  CollectionOfNum('uyg324fh hniu 77667 hg 5g65h h6544 n4  4 344fg').findNum();
  print('---------- 4 ----------');
  CollectionOfWords(
          ['first', 'first', 'first', 'second', 'third', 'third', 'first'])
      .mapOfWords();
  print('---------- 5 ----------');
  CollectionOfDigit('two, two, one, three, dog, three, four, dog, cat')
      .setOfDigit();
  print('---------- 6 ----------');

  Point(1, 1, 10).pointTo(1, 1, 1);
  Point(0, 0, 0).triangleAre(1, 1, 1, 2, 2, 2);
  Point.zero();
  Point.line();
  print('---------- 7 ----------');
  2.sqrtN(32);
  print('---------- 8 ----------');

  User user1 = User('user1@mail.ru');
  AdminUser user3 = AdminUser('alekukutudasuda@mail.ru');
  GeneralUser user2 = GeneralUser('user2@mail.ru');
  UserManager usermanager = UserManager<User>();
  usermanager.addUser(user1);
  usermanager.addUser(user2);
  usermanager.addUser(user3);
  usermanager.printer();
}

extension SqrtN on num {
  num sqrtN(n) {
    num xk = 2;
    num xk1 = 4;
    int step = 0;
    if (n<=0) throw Exception('Error n < 0 !!!');
    if (n == 1) throw Exception('Error n = 0 Сам сможешь посчитать!');
    if (n >= 33) throw Exception('Error n >=33 Очень сложно для меня!');


    while ((xk - xk1) * (xk - xk1) > 0.000001) {
      xk = xk1;
      xk1 = ((n - 1) * xk + this / xkMinus1(xk, n)) / n;
    }
    print('Корень $n степени из $this = ${(xk * 100000).toInt() / 100000}');
    return (xk * 100000).toInt() / 100000;
  }

  num xkMinus1(num xk, num n) {
    num x = xk;
    while (n != 2) {
      x *= xk;
      n -= 1;
    }

    return x;
  }
}
