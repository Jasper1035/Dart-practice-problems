// Make a two-player Rock-Paper-Scissors game against computer.

//     Ask for player's input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

void main() {
  List<String> options = ['Rock', 'Paper', 'Scissor'];

  stdout.write(
    'Enter your term choise(Rock /Paper /Scissor)\n',
  ); // taking input from the player
  String? playerInput = stdin.readLineSync()?.trim();

  var random = Random();
  String computerInput =
      options[random.nextInt(3)]; //taking input from the computer.

  // if(){

  // } else{

  // }
}
