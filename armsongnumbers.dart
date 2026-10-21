import 'dart:math';

bool isArmstrongNumber(int number) {
  if (number < 0) return false;

  final String digitsStr = number.toString();
  final int power = digitsStr.length;
  int sum = 0;

  for (int i = 0; i < power; i++) {
    final int digit = int.parse(digitsStr[i]);
    sum += pow(digit, power).toInt();
  }

  return sum == number;
}
