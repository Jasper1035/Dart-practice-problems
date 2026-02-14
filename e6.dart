// Ask the user for a string and print out whether this string is a palindrome or not.

// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  stdout.write('Enter any word\n');
  String? x = stdin.readLineSync();

  for (int i = 0; i < x!.length; i++) {
    print(x[i]);
  }
}
