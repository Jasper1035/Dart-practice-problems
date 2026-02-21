// Ask the user for a number and determine whether the number is prime or not.

//     Do it using a function

import 'dart:io';

void main() {
  stdout.write('Enter an Number\n');
  int? x = int.parse(stdin.readLineSync()!);

  print(func(x));
}

// int func(int x) {
//   if (x % 2 == 0) {
//     print('not prime');
//   } else {
//     print('prime');
//   }

//   return x;
// }

int func(int x) {
  // 1. Handle numbers less than 2 (0 and 1 are not prime)
  if (x < 2) {
    print('not prime');
    return x;
  }

  // 2. Assume it is prime until proven otherwise
  bool isPrime = true;

  // 3. The Condition: Loop from 2 up to x-1
  for (int i = 2; i < x; i++) {
    if (x % i == 0) {
      // If x is divisible by any 'i', it is NOT prime
      isPrime = false;
      break; // Exit the loop early
    }
  }

  // 4. Final check
  if (isPrime) {
    print('prime');
  } else {
    print('not prime');
  }

  return x;
}
