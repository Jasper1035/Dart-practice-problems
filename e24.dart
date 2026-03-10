// In the game of Hangman, a clue word is given by the program that the player has to guess, letter by letter. The player guesses one letter at a time until the entire word has been guessed. (In the actual game, the player can only guess 6 letters incorrectly before losing).

//     Let’s say the word the player has to guess is EVAPORATE.

// For this exercise:

// Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly. For now, let the player guess an infinite number of times until they get the entire word.

//     As a bonus, keep track of the letters the player guessed and display a different message if the player tries to guess that letter again.

// Remember to stop the game when all the letters have been guessed correctly! Don’t worry about choosing a word randomly or keeping track of the number of guesses the player has remaining - we will deal with those in a future exercise.

import 'dart:io';

void main() {
  // Pick a random word
  String randomWord = "EVAPORATE";
  hangman(randomWord);
}

void hangman(String word) {
  /*
  Takes the word and create a clue
  Ask the user to guess a letter
  Check if the letter is in the word
  If yes, put the letter in the same index of the clue
  */

  List clue = ("___ " * word.length).split(" ");

  // Initial state
  print(clue.join(" "));
  int count = 0;

  // Game
  while (true) {
    // User input
    count += 1;
    stdout.write("\nPlease guess a letter: ");
    String choice = stdin.readLineSync()!.toUpperCase();

    /* 
    Allow user to type the whole word or exit the game
    Any other incorrect case, demand a single letter */
    if (choice == word) {
      print("\nBingo! Attemps: $count");
      break;
    } else if (choice == "EXIT") {
      print("\nBye bye!\n");
      break;
    } else if (choice.length > 1) {
      print("\nNope!");
      continue;
    }

    // Check the word for guessed letter
    for (var i = 0; i < word.length; i++) {
      if (clue[i] == choice) {
        continue;
      } else if (word[i] == choice) {
        clue[i] = choice;
      }
    }

    // Current state
    print(clue.join(" "));

    // End the game if there are no more guesses
    if (clue.join("") == word) {
      print("\nBingo! Attemps:$count\n");
      break;
    }
  }
}
