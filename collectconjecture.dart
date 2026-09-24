class CollatzConjecture {
  int steps(int n) {
    if (n <= 0) {
      throw ArgumentError('Only positive integers are allowed');
    }

    int count = 0;
    int current = n;

    while (current != 1) {
      if (current.isEven) {
        current ~/= 2;
      } else {
        current = 3 * current + 1;
      }
      count++;
    }

    return count;
  }
}
