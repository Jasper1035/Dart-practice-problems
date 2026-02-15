// Ask the user for a string and print out whether this string is a palindrome or not.

// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  stdout.write('Enter any word\n');
  String? x = stdin.readLineSync();

  for (int i = x!.length - 1; i >= 0; i--) {
    // reverse the string = start from last index then dec[index] by 1 everytime.
    if (x.toLowerCase() == x[i]) {
      print('same');
    }
  }
}
