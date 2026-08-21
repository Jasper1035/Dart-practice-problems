class GameOfLife {
  List<List<int>> tick(List<List<int>> matrix) {
    if (matrix.isEmpty || matrix[0].isEmpty) {
      return matrix;
    }

    int rows = matrix.length;
    int cols = matrix[0].length;

    // Create a new grid initialized with 0s for the next generation
    List<List<int>> nextGen = List.generate(
      rows,
      (_) => List<int>.filled(cols, 0),
    );

    // All 8 possible neighbor offset directions
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

        // Count all adjacent live neighbors
        for (final dir in directions) {
          int nr = r + dir[0];
          int nc = c + dir[1];

          // Check grid boundary conditions
          if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
            if (matrix[nr][nc] == 1) {
              liveNeighbors++;
            }
          }
        }

        // Apply Conway's rules
        if (matrix[r][c] == 1) {
          // Rule 1: Live cell with 2 or 3 live neighbors lives
          if (liveNeighbors == 2 || liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
          // Otherwise, it dies (stays 0)
        } else {
          // Rule 2: Dead cell with exactly 3 live neighbors becomes alive
          if (liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
        }
      }
    }

    return nextGen;
  }
}

void main() {
  final game = GameOfLife();

  // Blinker oscillator example:
  // 0 1 0       0 0 0
  // 0 1 0  -->  1 1 1
  // 0 1 0       0 0 0
  List<List<int>> grid = [
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0],
  ];

  List<List<int>> nextState = game.tick(grid);
  for (var row in nextState) {
    print(row);
  }
  // Output:
  // [0, 0, 0]
  // [1, 1, 1]
  // [0, 0, 0]
}
