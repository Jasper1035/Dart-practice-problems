class Raindrops {
  String convert(int number) {
    final buffer = StringBuffer();

    if (number % 3 == 0) buffer.write('Pling');
    if (number % 5 == 0) buffer.write('Plang');
    if (number % 7 == 0) buffer.write('Plong');

    return buffer.isEmpty ? number.toString() : buffer.toString();
  }
}
