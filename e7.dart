// Let’s say you are given a list saved in a variable:

// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].

// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

List b = [];

void main() {
  for (int i in a) {
    if (i % 2 == 0) {
      b.add(i);
    }
  }
  print(b);
}




//solutions

// void main() {
//   List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

//   int i = 0;
//   List<int> l = [];

//   for (var e in a) {
//     if (++i % 2 == 0) {
//       l.add(e);
//     }
//   }
//   print(l);
  
//   // One liner
//   print([for (var e in a) if (++i % 2 == 0) e]);
// }