class Luhn {
  bool valid(String input) {
    // Strip all spaces
    final cleaned = input.replaceAll(' ', '');

    // Strings of length 1 or less are not valid
    if (cleaned.length <= 1) {
      return false;
    }

    int sum = 0;
    bool shouldDouble = false;

    // Traverse from right to left
    for (int i = cleaned.length - 1; i >= 0; i--) {
      final codeUnit = cleaned.codeUnitAt(i);

      // Check if character is a digit ('0' is 48, '9' is 57)
      if (codeUnit < 48 || codeUnit > 57) {
        return false;
      }

      int digit = codeUnit - 48;

      if (shouldDouble) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }

      sum += digit;
      shouldDouble = !shouldDouble;
    }

    return sum % 10 == 0;
  }
}
