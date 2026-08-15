class ScrabbleScore {
  final Map<String, int> _letterValues = {
    'A': 1,
    'E': 1,
    'I': 1,
    'O': 1,
    'U': 1,
    'L': 1,
    'N': 1,
    'R': 1,
    'S': 1,
    'T': 1,
    'D': 2,
    'G': 2,
    'B': 3,
    'C': 3,
    'M': 3,
    'P': 3,
    'F': 4,
    'H': 4,
    'V': 4,
    'W': 4,
    'Y': 4,
    'K': 5,
    'J': 8,
    'X': 8,
    'Q': 10,
    'Z': 10,
  };

  int score(String word) {
    int total = 0;
    String upper = word.toUpperCase();

    for (int i = 0; i < upper.length; i++) {
      total += _letterValues[upper[i]] ?? 0;
    }

    return total;
  }
}

void main() {
  ScrabbleScore scrabble = ScrabbleScore();

  String word = "qqqzzzzzzq";
  int total = scrabble.score(word);

  print('The score for "$word" is: $total');
  // Output: The score for "cabbage" is: 14
}
