class Hamming {
  int distance(String strandA, String strandB) {
    if (strandA.length != strandB.length) {
      throw ArgumentError('strands must be of equal length');
    }

    int differences = 0;
    for (int i = 0; i < strandA.length; i++) {
      if (strandA[i] != strandB[i]) {
        differences++;
      }
    }

    return differences;
  }
}
