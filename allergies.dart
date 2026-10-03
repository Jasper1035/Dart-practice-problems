class Allergies {
  static const Map _allergenScores = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128,
  };

  bool allergicTo(String item, int score) {
    final allergenValue = _allergenScores[item];
    if (allergenValue == null) {
      return false;
    }
    return (score & allergenValue) != 0;
  }

  List list(int score) {
    final List results = [];

    for (final entry in _allergenScores.entries) {
      if ((score & entry.value) != 0) {
        results.add(entry.key);
      }
    }

    return results;
  }
}
