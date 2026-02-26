// Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

// For example, say I type the string:

//   My name is Michele

// Then I would see the string:

//   Michele is name My

import 'dart:io';

void main() {
  stdout.write("Please give a sentence: ");
  String? x = stdin.readLineSync();

  reverseSentence(x!);
}

void reverseSentence(String x) {
  String a = x.split(" ").reversed.toList().join(" ");
  print(a);
}
