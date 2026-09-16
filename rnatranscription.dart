class RnaTranscription {
  static const Map _dnaToRna = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};

  String toRna(String dna) {
    final buffer = StringBuffer();

    for (int i = 0; i < dna.length; i++) {
      final nucleotide = dna[i];
      final complement = _dnaToRna[nucleotide];

      if (complement == null) {
        throw ArgumentError('Invalid nucleotide: $nucleotide');
      }

      buffer.write(complement);
    }

    return buffer.toString();
  }
}
