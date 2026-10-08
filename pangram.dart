class Pangram {
  bool isPangram(String text) {
    final letters = <String>{};

    for (final char in text.toLowerCase().split('')) {
      final codeUnit = char.codeUnitAt(0);
      // 'a' is 97, 'z' is 122
      if (codeUnit >= 97 && codeUnit <= 122) {
        letters.add(char);
      }
    }

    return letters.length == 26;
  }
}
