import 'dart:math';

class Point {
  int x = 0;
  int y = 0;
  int z = 0;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.line() {
    return Point(1, 1, 0);
  }

  num pointTo(int x1, int y1, int z1) {
    num distance = sqrt(pow(x - x1, 2) + pow(y - y1, 2) + pow(z - z1, 2));
    print("Расстояние точки с координатами X=$x, Y=$y, Z=$z до точки с "
        "координатами X=$x1, Y=$y1, Z=$z1: $distance");

    return distance;
  }

  num triangleAre(int x1, int y1, int z1, int x2, int y2, int z2) {
    num d01 = sqrt(pow(x - x1, 2) + pow(y - y1, 2) + pow(z - z1, 2));
    num d12 = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2) + pow(z1 - z2, 2));
    num d20 = sqrt(pow(x2 - x, 2) + pow(y2 - y, 2) + pow(z2 - z, 2));
    num p = (d01 + d12 + d20) / 2;
    num area = sqrt(p * (p - d01) * (p - d12) * (p - d20));

    print('Площадь треугольника = $area');

    return area;
  }
}
