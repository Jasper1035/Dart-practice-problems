class Anagram {
  List<String> findAnagrams(String target, List<String> candidates) {
    final lowerTarget = target.toLowerCase();
    final sortedTarget = _sortCharacters(lowerTarget);

    final List<String> results = [];

    for (final candidate in candidates) {
      final lowerCandidate = candidate.toLowerCase();

      // A word is not an anagram of itself
      if (lowerCandidate == lowerTarget) {
        continue;
      }

      // Quick length check before sorting
      if (lowerCandidate.length != lowerTarget.length) {
        continue;
      }

      if (_sortCharacters(lowerCandidate) == sortedTarget) {
        results.add(candidate);
      }
    }

    return results;
  }

  String _sortCharacters(String text) {
    final chars = text.split('');
    chars.sort();
    return chars.join();
  }
}
