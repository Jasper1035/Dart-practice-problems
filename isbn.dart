bool isValid(String isbn) {
  final cleaned = isbn.replaceAll('-', '');

  if (cleaned.length != 10) {
    return false;
  }

  int sum = 0;

  for (int i = 0; i < 10; i++) {
    final char = cleaned[i];
    final weight = 10 - i;

    if (i == 9 && char == 'X') {
      sum += 10 * weight;
    } else if (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57) {
      sum += (char.codeUnitAt(0) - 48) * weight;
    } else {
      return false;
    }
  }

  return sum % 11 == 0;
}
