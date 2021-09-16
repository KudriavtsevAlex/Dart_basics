import 'dart:math';

class Binary {
  int value;
  Binary(this.value);

  num toDec() {
    num result = 0;
    int rage = 0;
    while (value != 0) {
      result += (value - (value / 10).round() * 10) * pow(2, rage);
      rage += 1;
      value = (value / 10).round();
    }
    print('Dec: $result');
    return result;
  }

  int toBinary() {
    int binary = 0;
    int stage = 1;
    while (value != 0) {
      int temp = value % 2;
      value = value ~/ 2;
      binary += temp * stage;
      stage *= 10;
    }
    print('Binary: $binary');
    return binary;
  }
}
