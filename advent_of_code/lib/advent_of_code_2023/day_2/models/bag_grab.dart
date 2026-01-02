class AOC2023D2P1BagGrab {
  final int redBalls;
  final int blueBalls;
  final int greenBalls;

  AOC2023D2P1BagGrab({
    required this.redBalls,
    required this.blueBalls,
    required this.greenBalls,
  });

  /// Whether bag grab is valid
  bool isValid({
    required int amountOfRedBallsInBag,
    required int amountOfBlueBallsInBag,
    required int amountOfGreenBallsInBag,
  }) =>
      redBalls <= amountOfRedBallsInBag &&
      blueBalls <= amountOfBlueBallsInBag &&
      greenBalls <= amountOfGreenBallsInBag;

  /// The power of a set of cubes is equal to the numbers of red, green, and blue cubes multiplied together
  int minPowerOfBalls() => redBalls * blueBalls * greenBalls;
}
