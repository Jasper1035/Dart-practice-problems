enum Classification { equal, sublist, superlist, unequal }

class Sublist {
  Classification sublist(List<dynamic> listA, List<dynamic> listB) {
    if (listA.length == listB.length) {
      return _isSubsequence(listA, listB)
          ? Classification.equal
          : Classification.unequal;
    }

    if (listA.length < listB.length) {
      return _isSubsequence(listA, listB)
          ? Classification.sublist
          : Classification.unequal;
    }

    // listA.length > listB.length
    return _isSubsequence(listB, listA)
        ? Classification.superlist
        : Classification.unequal;
  }

  /// Helper to check if [sub] is a contiguous subsequence inside [main]
  bool _isSubsequence(List<dynamic> sub, List<dynamic> main) {
    if (sub.isEmpty) {
      return true;
    }

    if (sub.length > main.length) {
      return false;
    }

    for (int i = 0; i <= main.length - sub.length; i++) {
      bool match = true;
      for (int j = 0; j < sub.length; j++) {
        if (main[i + j] != sub[j]) {
          match = false;
          break;
        }
      }
      if (match) {
        return true;
      }
    }

    return false;
  }
}
