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
}
