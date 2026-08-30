class WordCount {
  Map<String, int> countWords(String sentence) {
    final Map<String, int> counts = {};

    // Matches sequences of alphanumeric characters, including apostrophes within contractions
    final RegExp wordPattern = RegExp(r"[a-z0-9]+(?:'[a-z0-9]+)?");

    final Iterable<Match> matches = wordPattern.allMatches(
      sentence.toLowerCase(),
    );

    for (final Match match in matches) {
      final String word = match.group(0)!;
      counts[word] = (counts[word] ?? 0) + 1;
    }

    return counts;
  }
}

void main() {
  final wordCount = WordCount();

  String input =
      "\"That's the password: 'PASSWORD 123'!\", cried the Special Agent.\nSo I fled.";
  print(wordCount.countWords(input));
  // Output: {that's: 1, the: 2, password: 2, 123: 1, cried: 1, special: 1, agent: 1, so: 1, i: 1, fled: 1}
}
