class SumOfMultiples {
  int sum(List items, num level) {
    final Set uniqueMultiples = {};

    for (final rawBase in items) {
      final int base = rawBase.toInt();
      if (base <= 0) continue;

      int multiple = base;
      final int maxLevel = level.toInt();
      while (multiple < maxLevel) {
        uniqueMultiples.add(multiple);
        multiple += base;
      }
    }

    int total = 0;
    for (final int value in uniqueMultiples) {
      total = (total + value).toInt();
    }

    return total;
  }
}