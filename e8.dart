// Make a two-player Rock-Paper-Scissors game against computer.

//     Ask for player's input, compare them, print out a message to the winner.

import 'dart:io';

void main() {
  stdout.write('Enter your term Rock/Paper/Scissor\n');
  String x = stdin.readLineSync()!;

  print(x);
}
