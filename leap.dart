class Leap {
  late int year;

  // bool findLeap(int year) {
  //   if (year % 400 == 0) return true;
  //   if (year % 100 == 0) return false;

  //   return year % 4 == 0;
  // }

  // one line solution

  bool learYear(int year) {
    return (year % 400 == 0 && year % 100 != 0) || (year % 4 == 0);
  }
}

void main() {
  Leap leap = Leap();

  print(leap.learYear(2000));
}
