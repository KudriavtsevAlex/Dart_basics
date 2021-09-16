import 'package:dart_basics/binary.dart';
import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/collection_of_string.dart';
import 'package:dart_basics/collection_of_words.dart';

void main() {
  print('Наибольший общий делить: ${DelCalc(30, 18).gcd()}');
  print('Наименьшее общее кратное: ${DelCalc(30, 18).lcm()}');

  Binary(10).toDec();
  Binary(33).toBinary();

  CollectionOfNum('uyg324fh hniu 77667 hg 5g65h h6544 n4  4 344fg').findNum();
  CollectionOfWords(
          ['first', 'first', 'first', 'second', 'third', 'third', 'first'])
      .MapOfWords();
}
