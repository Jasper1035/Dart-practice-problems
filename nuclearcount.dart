class InvalidNucleotideException implements Exception {
  final String message;
  InvalidNucleotideException([this.message = 'Invalid nucleotide encountered']);

  @override
  String toString() => 'InvalidNucleotideException: $message';
}

class NucleotideCount {
  Map<String, int> count(String strand) {
    final Map<String, int> counts = {'A': 0, 'C': 0, 'G': 0, 'M': 0};

    for (int i = 0; i < strand.length; i++) {
      final char = strand[i];
      if (counts.containsKey(char)) {
        counts[char] = counts[char]! + 1;
      } else {
        throw InvalidNucleotideException(
          'Character "$char" is not a valid nucleotide.',
        );
      }
    }

    return counts;
  }
}
