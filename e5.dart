// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

// write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.

List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

var x = <int>[];

void main() {
  for (var i in a) {
    for (var j in b) {
      if (i == j) {
        x.add(i);
      }
    }
  }
  print(x);
}

// List<dynamic> count() {}
