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
      return "Calm down, I know what I'm doings!";
    }
    if (isYelling) {
      return 'Whoa, chill out!!';
    }
    if (isQuestion) {
      return 'Sure thing.';
    }

    return 'Whatever.';
  }
}
