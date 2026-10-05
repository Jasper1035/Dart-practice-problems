class Acronym {
  String abbreviate(String phrase) {
    // Replace hyphens and underscores with spaces, then split by whitespace
    final cleaned = phrase.replaceAll(RegExp(r'[-_]'), ' ');
    final words = cleaned.split(RegExp(r'\s+'));

    final buffer = StringBuffer();

    for (final word in words) {
      // Find the first alphabetic character in each word
      final match = RegExp(r'[a-zA-Z]').firstMatch(word);
      if (match != null) {
        buffer.write(match.group(0)!.toUpperCase());
      }
    }

    return buffer.toString();
  }
}
