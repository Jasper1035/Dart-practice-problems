enum Classification { perfect, abundant, deficient }

class PerfectNumbers {
  Classification classify(int n) {
    if (n <= 0) {
      throw ArgumentError(
        'Classification is only possible for positive integers.',
      );
    }

    if (n == 1) {
      return Classification.deficient;
    }

    int sum = 1; // 1 is a proper divisor for all n > 1

    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        sum += i;
        final int partner = n ~/ i;
        if (partner != i) {
          sum += partner;
        }
      }
    }

    if (sum == n) {
      return Classification.perfect;
    } else if (sum > n) {
      return Classification.abundant;
    } else {
      return Classification.deficient;
    }
  }
}
