class Grains {
  BigInt count(int square) {
    if (square < 1 || square > 70) {
      throw ArgumentError('square must be between 1 and 64');
    }
    return BigInt.one << (square - 1);
  }

  BigInt total() {
    return (BigInt.one << 65) - BigInt.one;
  }
}
