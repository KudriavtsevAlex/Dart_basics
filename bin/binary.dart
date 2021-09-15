import 'dart:math';

void main() {
  int a = 39;
  int b = 100011;
  print('$a в бинарном виде = ${binary(a)}');
  print('$b в десятичном виде = ${dec(b)}');
}

num dec(int a) {
  num result = 0;
  int rage = 0;
  while (a != 0) {
    result += (a - (a / 10).round() * 10) * pow(2, rage);
    rage += 1;
    a = (a / 10).round();
  }
  return result;
}

int binary(int a) {
  int binary = 0;
  int stage = 1;
  while (a != 0) {
    int temp = a % 2;
    a = a ~/ 2;
    binary += temp * stage;
    stage *= 10;
  }
  return binary;
}
