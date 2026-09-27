import 'dart:math';

class ResistorColorTrio {
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

  String label(List colors) {
    final int first = _colors.indexOf(colors[0].toLowerCase());
    final int second = _colors.indexOf(colors[1].toLowerCase());
    final int zeros = _colors.indexOf(colors[2].toLowerCase());

    // Calculate base resistance in ohms
    int totalOhms = (first * 10 + second) * pow(10, zeros).toInt();

    // Determine metric prefix
    if (totalOhms >= 1000000000) {
      return '${totalOhms ~/ 1000000000} gigaohms';
    } else if (totalOhms >= 1000000) {
      return '${totalOhms ~/ 1000000} megaohms';
    } else if (totalOhms >= 1000) {
      return '${totalOhms ~/ 1000} kiloohms';
    } else {
      return '$totalOhms ohms';
    }
  }
}
