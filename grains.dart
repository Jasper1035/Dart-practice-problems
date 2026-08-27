class Grains {
  /// Calculates the grains on a specific square (1 to 64)
  BigInt square(int n) {
    if (n < 1 || n > 64) {
      throw ArgumentError('square must be between 1 and 64');
    }
    // 2^(n - 1)
    return BigInt.from(2).pow(n - 1);
  }

  /// Calculates the total number of grains on all 64 squares: 2^64 - 1
  BigInt total() {
    return BigInt.from(2).pow(64) - BigInt.one;
  }
}

BigInt square(final int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError('square must be between 1 and 64');
  }
  return BigInt.from(2).pow(n - 1);
}

BigInt total() {
  return BigInt.from(2).pow(64) - BigInt.one;
}
