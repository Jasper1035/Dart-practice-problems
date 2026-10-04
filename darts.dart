class Darts {
  int score(double x, double y) {
    // Distance squared from origin (0, 0): x^2 + y^2
    final distanceSquared = x * x + y * y;

    // Inner circle: radius 1 (1^2 = 1) -> 10 points
    if (distanceSquared <= 1) {
      return 10;
    }

    // Middle circle: radius 5 (5^2 = 25) -> 5 points
    if (distanceSquared <= 25) {
      return 5;
    }

    // Outer circle: radius 10 (10^2 = 100) -> 1 point
    if (distanceSquared <= 100) {
      return 1;
    }

    // Outside the target -> 0 points
    return 0;
  }
}
