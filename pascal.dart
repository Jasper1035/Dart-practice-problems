class PascalsTriangle {
  List<List<int>> rows(int count) {
    if (count <= 0) return [];

    final List<List<int>> triangle = [];

    for (int r = 0; r < count; r++) {
      final List<int> row = List<int>.filled(r + 1, 1);

      for (int c = 1; c < r; c++) {
        row[c] = triangle[r - 1][c - 1] + triangle[r - 1][c];
      }

      triangle.add(row);
    }

    return triangle;
  }
}
