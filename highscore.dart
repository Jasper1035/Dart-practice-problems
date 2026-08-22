class HighScores {
  final List<int> scores;

  HighScores(this.scores);

  /// Returns the last added score
  int latest() {
    return scores.last;
  }

  /// Returns the highest score
  int personalBest() {
    return scores.reduce((a, b) => a > b ? a : b);
  }

  /// Returns the three highest scores in descending order
  List<int> personalTopThree() {
    List<int> sortedScores = List<int>.from(scores);
    sortedScores.sort((a, b) => b.compareTo(a));
    return sortedScores.take(3).toList();
  }
}

void main() {
  final highScores = HighScores([10, 30, 90, 30, 100, 20, 70]);

  print(highScores.scores); // [10, 30, 90, 30, 100, 20, 70]
  print(highScores.latest()); // 70
  print(highScores.personalBest()); // 100
  print(highScores.personalTopThree()); // [100, 90, 70]
}
