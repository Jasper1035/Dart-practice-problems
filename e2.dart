import 'dart:io';

//Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

void main() {
  stdout.write('Enter a Number \n');
  int numb = int.parse(stdin.readLineSync()!);

  int x = numb % 2;
  // if (x == 0) {
  //   print('even');
  // } else {
  //   print('odd');
  // }

  String y = x == 0 ? 'even' : 'odd';
  print(y);
}


// solution 


// void main() {    
//     stdout.write("Hi, please choose a number: ");
//     int number = int.parse(stdin.readLineSync());
    
//     if (number % 2 == 0) {
//         print("Chosen number is even");
//     }
//     else {
//         print("Chosen number is odd");
//     }
// }

