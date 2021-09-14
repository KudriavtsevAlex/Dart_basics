void main() {
  int gcd(int a, int b) {
    if (a < b) {
      a = 2;
    } else {
      a = 1;
    }

    return a;
  }

  gcd(1, 2);
}
