// Time for some fake graphics! Let’s say we want to draw game boards that look like this:

//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---

// This one is 3x3 (like in tic tac toe).

// Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

void main() {
  stdout.write('What squire size you want\n');
  int userChoice = int.parse(stdin.readLineSync()!);

  print('Here is a $userChoice by $userChoice board: \n');

  drawBoard(userChoice);
}

void drawBoard(int squireSize) {
  var rowLine = ' ---';
  var colLine = '|   ';

  for (int i = 0; i < squireSize; i++) {
    print(rowLine * squireSize);
    print(colLine * (squireSize + 1));
  }

  print('${rowLine * squireSize}');
}
