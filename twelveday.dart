class TwelveDays {
  static const List<String> _ordinals = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth',
    'eleventh',
    'twelfth',
  ];

  static const List<String> _gifts = [
    'a Partridge in a Pear Tree.',
    'two Turtle Doves, and ',
    'three French Hens, ',
    'four Calling Birds, ',
    'five Gold Rings, ',
    'six Geese-a-Laying, ',
    'seven Swans-a-Swimming, ',
    'eight Maids-a-Milking, ',
    'nine Ladies Dancing, ',
    'ten Lords-a-Leaping, ',
    'eleven Pipers Piping, ',
    'twelve Drummers Drumming, ',
  ];

  String _verse(int n) {
    final buffer = StringBuffer();
    buffer.write(
      'On the ${_ordinals[n - 1]} day of Christmas my true love gave to me: ',
    );

    for (int i = n - 1; i >= 0; i--) {
      buffer.write(_gifts[i]);
    }

    return buffer.toString();
  }

  String recite(int start, int end) {
    final List<String> verses = [];
    for (int i = start; i <= end; i++) {
      verses.add(_verse(i));
    }
    return verses.join('\n');
  }
}
