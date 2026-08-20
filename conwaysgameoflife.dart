class GameOfLife {
  List<List<int>> currentMatrix;

  GameOfLife(this.currentMatrix);

  List<List<int>> matrix() {
    return currentMatrix;
  }

  void tick() {
    if (currentMatrix.isEmpty || currentMatrix[0].isEmpty) {
      return;
    }

    int rows = currentMatrix.length;
    int cols = currentMatrix[0].length;

    List<List<int>> nextGen = List.generate(
      rows,
      (_) => List<int>.filled(cols, 0),
    );

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

        for (final dir in directions) {
          int nr = r + dir[0];
          int nc = c + dir[1];

          if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
            if (currentMatrix[nr][nc] == 1) {
              liveNeighbors++;
            }
          }
        }

        if (currentMatrix[r][c] == 1) {
          if (liveNeighbors == 2 || liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
        } else {
          if (liveNeighbors == 3) {
            nextGen[r][c] = 1;
          }
        }
      }
    }

    currentMatrix = nextGen;
  }
}
