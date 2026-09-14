class Strain {
  List<T> keep<T>(Iterable<T> collection, bool Function(T) predicate) {
    final List<T> result = [];
    for (final element in collection) {
      if (predicate(element)) {
        result.add(element);
      }
    }
    return result;
  }

  List<T> discard<T>(Iterable<T> collection, bool Function(T) predicate) {
    final List<T> result = [];
    for (final element in collection) {
      if (!predicate(element)) {
        result.add(element);
      }
    }
    return result;
  }
}
