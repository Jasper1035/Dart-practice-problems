// Ask the user for a string and print out whether this string is a palindrome or not.

// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  stdout.write('Enter any word\n');
  String? x = stdin.readLineSync();

  String reversed = "";
  String original = x!.toLowerCase();

  for (int i = original.length - 1; i >= 0; i--) {
    reversed += original[i]; // Build the string backwards
  }

  if (original == reversed) {
    print('It is a palindrome');
  } else {
    print('Not a palindrome');
  }
}





//solution.

// void main() {
  
//   stdout.write("Please give a word: ");
//   String input = stdin.readLineSync().toLowerCase();
//   String revInput = input.split('').reversed.join('');
  
//   // Ternary operator
//   input == revInput
//       ? print("The word is palindrome")
//       : print("The word is not a palindrome");
// }



//another solution

// void main() {
//   stdout.write('Enter any word: ');
//   // Read input and provide a default empty string if null
//   String input = stdin.readLineSync()?.toLowerCase() ?? "";

//   // Reverse the string: Split -> Reverse -> Join
//   String reversed = input.split('').reversed.join('');

//   if (input == reversed && input.isNotEmpty) {
//     print('$input is a palindrome');
//   } else {
//     print('$input is not a palindrome');
//   }
// }