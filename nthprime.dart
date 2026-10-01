class NthPrime {
  int prime(int n) {
    if (n < 1) {
      throw ArgumentError('There is no zeroth prime');
    }

    if (n == 1) return 2;

    int count = 1;
    int candidate = 3;

    while (count < n) {
      if (_isPrime(candidate)) {
        count++;
        if (count == n) {
          return candidate;
        }
      }
      candidate += 2;
    }

    return candidate;
  }

  bool _isPrime(int number) {
    if (number < 2) return false;
    if (number == 2 || number == 3) return true;
    if (number % 2 == 0 || number % 3 == 0) return false;

    for (int i = 5; i * i <= number; i += 6) {
      if (number % i == 0 || number % (i + 2) == 0) {
        return false;
      }
    }

    return true;
  }
}
