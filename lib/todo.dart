import 'package:dart_basics/binary.dart';
import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/collection_of_num.dart';
import 'package:dart_basics/collection_of_words.dart';
import 'package:dart_basics/collection_of_digit.dart';
import 'package:dart_basics/point.dart';

void main() {
  print('Наибольший общий делить: ${DelCalc(30, 18).gcd()}');
  print('Наименьшее общее кратное: ${DelCalc(30, 18).lcm()}');

  Binary(10).toDec();
  Binary(33).toBinary();

  CollectionOfNum('uyg324fh hniu 77667 hg 5g65h h6544 n4  4 344fg').findNum();
  CollectionOfWords(
          ['first', 'first', 'first', 'second', 'third', 'third', 'first'])
      .mapOfWords();
  CollectionOfDigit('two, two, one, three, dog, three, four, dog, cat')
      .setOfDigit();

  Point(1, 1, 10).pointTo(1, 1, 1);
  Point(0, 0, 0).triangleAre(1, 1, 1, 2, 2, 2);
  Point.zero();
  Point.line();
  2.sqrtN(32);
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
