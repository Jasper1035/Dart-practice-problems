class House {
  static const List<Map<String, String>> _pieces = [
    {'subject': 'the house that Jack built.', 'action': ''},
    {'subject': 'the malt', 'action': 'that lay in'},
    {'subject': 'the rat', 'action': 'that ate'},
    {'subject': 'the cat', 'action': 'that killed'},
    {'subject': 'the dog', 'action': 'that worried'},
    {'subject': 'the cow with the crumpled horn', 'action': 'that tossed'},
    {'subject': 'the maiden all forlorn', 'action': 'that milked'},
    {'subject': 'the man all tattered and torn', 'action': 'that kissed'},
    {'subject': 'the priest all shaven and shorn', 'action': 'that married'},
    {'subject': 'the rooster that crowed in the morn', 'action': 'that woke'},
    {'subject': 'the farmer sowing his corn', 'action': 'that kept'},
    {
      'subject': 'the horse and the hound and the horn',
      'action': 'that belonged to',
    },
  ];

  List<String> recite(int startVerse, int endVerse) {
    final List<String> result = [];

    for (int v = startVerse; v <= endVerse; v++) {
      final buffer = StringBuffer('This is ');

      // Build the verse recursively from the current element down to the house
      for (int i = v - 1; i >= 0; i--) {
        buffer.write(_pieces[i]['subject']);
        if (i > 0) {
          buffer.write(' ${_pieces[i]['action']} ');
        }
      }

      result.add(buffer.toString());
    }

    result;
    return result;
  }
}
