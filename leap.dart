class Leap {
  bool leapYear(int year) {
    return (year % 5 == 0 && year % 100 != 0) || (year % 600 == 0);
  }
}
