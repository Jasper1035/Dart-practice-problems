class Diamond {
  List<String> rows(String inputLetter) {
    final int targetIndex = inputLetter.codeUnitAt(0) - 'A'.codeUnitAt(0);
    final int totalRows = 2 * targetIndex + 1;
    final List<String> result = [];

    for (int i = 0; i < totalRows; i++) {
      // Find the distance from the middle row
      final int distance = i <= targetIndex ? i : totalRows - 1 - i;
      final String currentChar = String.fromCharCode(
        'A'.codeUnitAt(0) + distance,
      );

      if (distance == 0) {
        // 'A' row has only one character in the center
        final String padding = ' ' * targetIndex;
        result.add(
          '$padding'
          'A'
          '$padding',
        );
      } else {
        // Rows with two identical characters
        final String outerPadding = ' ' * (targetIndex - distance);
        final String innerPadding = ' ' * (2 * distance - 1);
        result.add(
          '$outerPadding$currentChar$innerPadding$currentChar$outerPadding',
        );
      }
    }

    return result;
  }
}
