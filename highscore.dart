class HighScores {
  final List<int> scores;

  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    return scores.reduce((a, b) => a > b ? a : b);
  }

  List<int> personalTopThree() {
    final sorted = List<int>.from(scores)..sort((a, b) => b.compareTo(a));
    return sorted.take(3).toList();
  }
}
