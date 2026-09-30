class Isogram {
  bool isIsogram(String phrase) {
    final Set seen = {};

    for (final char in phrase.toLowerCase().split('')) {
      // Spaces and hyphens are allowed to appear multiple times
      if (char == ' ' || char == '-') {
        continue;
      }

      if (seen.contains(char)) {
        return false;
      }

      seen.add(char);
    }

    return true;
  }
}
