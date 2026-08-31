class Bob {
  String response(String input) {
    // 1. Trim leading and trailing whitespace
    final String trimmed = input.trim();

    // Silence / empty check
    if (trimmed.isEmpty) {
      return 'Fine. Be that way!';
    }

    // Check if input is a question
    final bool isQuestion = trimmed.endsWith('?');

    // Check if input contains at least one letter
    final bool hasLetters = RegExp(r'[a-zA-Z]').hasMatch(trimmed);

    // Yelling means it contains letters and uppercase version equals the original
    final bool isYelling = hasLetters && trimmed == trimmed.toUpperCase();

    // 2. Evaluate Bob's responses according to priority
    if (isYelling && isQuestion) {
      return "Calm down, I know what I'm doing!";
    }

    if (isYelling) {
      return 'Whoa, chill out!';
    }

    if (isQuestion) {
      return 'Sure.';
    }

    return 'Whatever.';
  }
}
