// Ask the user for a number and determine whether the number is prime or not.

//     Do it using a function

import 'dart:io';

void main() {
  stdout.write('Enter an Number\n');
  int? x = int.parse(stdin.readLineSync()!);

  print(func(x));
}

int func(int x) {
  if (x % 2 == 0) {
    print('not prime');
  } else {
    print('prime');
  }

  return x;
}
