void main() {
  print(gcd(30, 18));
  print(lcm(30, 18));
}

int gcd(int a, int b) {
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

lcm(int a, int b) {
  return a * b / gcd(a, b);
}
