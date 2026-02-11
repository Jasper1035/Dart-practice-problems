// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

// If you don’t know what a divisor is, it is a number that divides evenly into another number.
// For example, 13 is a divisor of 26 because 26 / 13 has no remainder.

import 'dart:io';

void main() {
  stdout.write('enter a random number \n');
  double? a = double.parse(stdin.readLineSync()!);

  //solution
  for (int i = 1; i <= a; i++) {
    if (a % i == 0) {
      print(i);
    }
  }
}
