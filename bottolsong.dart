class BottleSong {
  static const Map _numbersCapitalized = {
    10: 'Ten',
    9: 'Nine',
    8: 'Eight',
    7: 'Seven',
    6: 'Six',
    5: 'Five',
    4: 'Four',
    3: 'Three',
    2: 'Two',
    1: 'One',
    0: 'no',
  };

  static const Map _numbersLower = {
    10: 'ten',
    9: 'nine',
    8: 'eight',
    7: 'seven',
    6: 'six',
    5: 'five',
    4: 'four',
    3: 'three',
    2: 'two',
    1: 'one',
    0: 'no',
  };

  String _bottleNoun(int count) => count == 1 ? 'bottle' : 'bottles';

  List _verse(int n) {
    final String capNum = _numbersCapitalized[n]!;
    final String noun = _bottleNoun(n);
    final String nextNum = _numbersLower[n - 1]!;
    final String nextNoun = _bottleNoun(n - 1);

    final String firstLine =
        capNum + ' green ' + noun + ' hanging on the wall,';

    return [
      firstLine,
      firstLine,
      'And if one green bottle should accidentally fall,',
      "There'll be " + nextNum + ' green ' + nextNoun + ' hanging on the wall.',
    ];
  }

  List recite(int startBottles, int takeDown) {
    final List result = [];

    for (int i = 0; i < takeDown; i++) {
      final int current = startBottles - i;
      result.addAll(_verse(current));
      if (i < takeDown - 1) {
        result.add('');
      }
    }

    return result;
  }
}
