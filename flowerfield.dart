class FlowerField {
  final List<String> garden;

  FlowerField(this.garden);

  List<String> get annotated {
    if (garden.isEmpty) return [];

    final int rows = garden.length;
    final int cols = garden[0].length;
    final List<String> result = [];

    const List<List<int>> directions = [
      [-1, -1],
      [-1, 0],
      [-1, 1],
      [0, -1],
      [0, 1],
      [1, -1],
      [1, 0],
      [1, 1],
    ];

    for (int r = 0; r < rows; r++) {
      final buffer = StringBuffer();

      for (int c = 0; c < cols; c++) {
        if (garden[r][c] == '*') {
          buffer.write('*');
          continue;
        }

        int count = 0;
        for (final dir in directions) {
          final int nr = r + dir[0];
          final int nc = c + dir[1];

          if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
            if (garden[nr][nc] == '*') {
              count++;
            }
          }
        }

        buffer.write(count > 0 ? count.toString() : ' ');
      }

      result.add(buffer.toString());
    }

    return result;
  }
}
