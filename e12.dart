// Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. Take this opportunity to think about how you can use functions.

//     Make sure to ask the user to enter the number of numbers in the sequence to generate.

import 'dart:io';

void main() {
  stdout.write('How many Fibonnaci numbers do you want?');
  int? x = int.parse(stdin.readLineSync()!);

  print(count(x));
}

List<int> count(int x) {
  List<int> fibList = [1, 1];

  for (var i = 0; i < x; i++) {
    fibList.add(fibList[i] + fibList[i + 1]);
  }

  return fibList;
}
