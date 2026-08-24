class DifferenceOfSquares {
  /// Computes (1 + 2 + ... + n)²
  int squareOfSum(int n) {
    int sum = (n * (n + 1)) ~/ 2;
    return sum * sum;
  }

  /// Computes 1² + 2² + ... + n²
  int sumOfSquares(int n) {
    return (n * (n + 1) * (2 * n + 1)) ~/ 6;
  }

  /// Computes squareOfSum(n) - sumOfSquares(n)
  int differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
