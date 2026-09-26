class ResistorColorDuo {
  static const List _colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  int value(List colors) {
    final int first = _colors.indexOf(colors[0].toLowerCase());
    final int second = _colors.indexOf(colors[1].toLowerCase());

    return first * 10 + second;
  }
}
