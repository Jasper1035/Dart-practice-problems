class PrimeFactors {
  List<int> factors(int value) {
    final List<int> result = [];
    int remainder = value;
    int divisor = 2;

    while (divisor * divisor <= remainder) {
      while (remainder % divisor == 0) {
        result.add(divisor);
        remainder ~/= divisor;
      }
      divisor++;
    }

    if (remainder > 1) {
      result.add(remainder);
    }

    return result;
  }
}
