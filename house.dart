class House {
  static const List<List<String>> _parts = [
    ['the house that Jack built.', ''],
    ['the malt', 'that lay in '],
    ['the rat', 'that ate '],
    ['the cat', 'that killed '],
    ['the dog', 'that worried '],
    ['the cow with the crumpled horn', 'that tossed '],
    ['the maiden all forlorn', 'that milked '],
    ['the man all tattered and torn', 'that kissed '],
    ['the priest all shaven and shorn', 'that married '],
    ['the rooster that crowed in the morn', 'that woke '],
    ['the farmer sowing his corn', 'that kept '],
    ['the horse and the hound and the horn', 'that belonged to '],
  ];

  String verse(int verseNum) {
    StringBuffer sb = StringBuffer('This is ');
    sb.write(_parts[verseNum - 1][0]);

    for (int i = verseNum - 1; i >= 1; i--) {
      sb.write(' ${_parts[i][1]}${_parts[i - 1][0]}');
    }

    return sb.toString();
  }

  /// Returns verses joined by newlines as a single String
  String recite(int startVerse, int endVerse) {
    List<String> verses = [];
    for (int i = startVerse; i <= endVerse; i++) {
      verses.add(verse(i));
    }
    return verses.join('\n');
  }
}
