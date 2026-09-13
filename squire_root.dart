class SquareRoot {
  int squareRoot(int radicand) {
    if (radicand <= 0) return 0;
    if (radicand == 1) return 1;

    // Binary search approach without using math libraries
    int low = 1;
    int high = radicand;

    while (low <= high) {
      int mid = low + ((high - low) ~/ 2);
      int square = mid * mid;

      if (square == radicand) {
        return mid;
      } else if (square < radicand) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return high;
  }
}
