class DelCalc {
  int a;
  int b;

  DelCalc(this.a, this.b);

  // print(gcd(30, 18));
  // print(lcm(30, 18));

  int gcd() {
    if (a >= b) {
      int x = b;
      while (a % x != 0 || b % x != 0) {
        x -= 1;
      }
      return x;
    } else {
      int x = a;
      while (a % x != 0 || b % x != 0) {
        x -= 1;
      }
      return x;
    }
  }

  num lcm() {
    return a * b ~/ gcd();
  }
}
