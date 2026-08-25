// Define the custom exception
class InvalidNucleotideException implements Exception {}

class NucleotideCount {
  Map<String, int> count(String strand) {
    // Initialize counts for all four valid nucleotides
    Map<String, int> counts = {'A': 0, 'C': 0, 'G': 0, 'T': 0};

    for (int i = 0; i < strand.length; i++) {
      String nucleotide = strand[i];

      if (counts.containsKey(nucleotide)) {
        counts[nucleotide] = counts[nucleotide]! + 1;
      } else {
        // Throw the custom exception on any invalid character
        throw InvalidNucleotideException();
      }
    }

    return counts;
  }
}
