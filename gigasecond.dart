DateTime addGigasecondTo(final DateTime birthDate) {
  return birthDate.add(const Duration(seconds: 1000000000));
} // this one accepted

class Gigasecond {
  DateTime add(final DateTime birthDate) {
    return birthDate.add(const Duration(seconds: 1000000000));
  }
}
