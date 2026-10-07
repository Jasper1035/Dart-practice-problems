class Triangle {
  bool _isValid(double a, double b, double c) {
    if (a <= 0 || b <= 0 || c <= 0) return false;
    return (a + b >= c) && (b + c >= a) && (a + c >= b);
  }

  bool equilateral(double a, double b, double c) {
    if (!_isValid(a, b, c)) return false;
    return a == b && b == c;
  }

  bool isosceles(double a, double b, double c) {
    if (!_isValid(a, b, c)) return false;
    return a == b || b == c || a == c;
  }

  bool scalene(double a, double b, double c) {
    if (!_isValid(a, b, c)) return false;
    return a != b && b != c && a != c;
  }
}
