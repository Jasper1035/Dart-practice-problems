// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

//     Keep track of how many guesses the user has taken, and when the game ends, print this out.

import 'dart:io';
import 'dart:math';

void main() {
  var computerGuess = Random().nextInt(100);
  // print(computerGuess);
  int? x;
  int i = 0;
  do {
    stdout.write('Enter a random number between (0 - 100)\n');
    x = (int.parse(stdin.readLineSync()!));
    if (x == computerGuess) {
      print('You are Correct');
      break;
    } else if (x < computerGuess) {
      print('Number is too low');
    } else if (x > computerGuess) {
      print('Number is too high');
    }
    i++;
  } while (x != computerGuess);
  print('$i attempt taken by you');
}
