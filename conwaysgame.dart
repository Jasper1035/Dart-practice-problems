class GameOfLife {
  List<List<int>> transform(List<List<int>> matrix) {
    if (matrix.isEmpty || matrix[0].isEmpty) return [];

    final int rows = matrix.length;
    final int cols = matrix[0].length;

    // Initialize the next generation grid with zeros
    final List<List<int>> nextGen = List.generate(
      rows,
      (_) => List.filled(cols, 0),
    );

    // All 8 possible surrounding directions
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
      for (int c = 0; c < cols; c++) {
        int liveNeighbors = 0;

        // Count live neighbors
        for (final dir in directions) {
          final int nr = r + dir[0];
          final int nc = c + dir[1];

          if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
            if (matrix[nr][nc] == 1) {
              liveNeighbors++;
            }
          }
        }

        final int current = matrix[r][c];

        // Apply Conway's rules
        if (current == 1) {
          // Live cell stays alive if it has 2 or 3 live neighbors
          if (liveNeighbors == 2 || liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
        } else {
          // Dead cell becomes alive if it has exactly 3 live neighbors
          if (liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
        }
      }
    }

    return nextGen;
  }
}
