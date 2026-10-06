class PhoneNumber {
  String clean(String input) {
    if (RegExp(r'[a-zA-Z]').hasMatch(input)) {
      throw FormatException('letters not permitted');
    }
    if (RegExp(r'[@:!]').hasMatch(input)) {
      throw FormatException('punctuations not permitted');
    }

    String digits = input.replaceAll(RegExp(r'\D'), '');

    if (digits.length < 10) {
      throw FormatException('must not be fewer than 10 digits');
    }
    if (digits.length > 11) {
      throw FormatException('must not be greater than 11 digits');
    }
    if (digits.length == 11) {
      if (!digits.startsWith('1')) {
        throw FormatException('11 digits must start with 1');
      }
      digits = digits.substring(1);
    }

    if (digits[0] == '0') {
      throw FormatException('area code cannot start with zero');
    }
    if (digits[0] == '1') {
      throw FormatException('area code cannot start with one');
    }
    if (digits[3] == '0') {
      throw FormatException('exchange code cannot start with zero');
    }
    if (digits[3] == '1') {
      throw FormatException('exchange code cannot start with one');
    }

    return digits;
  }
}
