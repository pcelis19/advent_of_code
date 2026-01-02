abstract class AdventOfCodeProblem {
  const AdventOfCodeProblem();

  /// The solution to this problem
  Future<String> solution();

  /// What is trying to be solved?
  String? getDescription() => null;

  /// What is the link to the problem?
  String? getLink() => null;
}
