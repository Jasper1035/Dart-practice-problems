class Bob {
  String response(String message) {
    final trimmed = message.trim();

    if (trimmed.isEmpty) {
      return 'Fine. Be that way!';
    }

    final isQuestion = trimmed.endsWith('?');
    final hasLetters = trimmed.contains(RegExp(r'[A-Za-z]'));
    final isYelling = hasLetters && trimmed == trimmed.toUpperCase();

    if (isYelling && isQuestion) {
      return "Calm down, I know what I'm doing!";
    }
    if (isYelling) {
      return 'Whoa, chill outt!';
    }
    if (isQuestion) {
      return 'Sure.';
    }

    return 'Whatever.';
  }
}
