class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    final Map<String, int> result = {};

    for (final entry in legacy.entries) {
      final int score = int.parse(entry.key);
      final List<String> letters = entry.value;

      for (final letter in letters) {
        result[letter.toLowerCase()] = score;
      }
    }

    return result;
  }
}
