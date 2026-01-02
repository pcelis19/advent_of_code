typedef AdventOfCodeInputFunction = Future<List<String>> Function();

abstract class AdventOfCodeProblem {
  final AdventOfCodeInputFunction _getInputFcn;

  const AdventOfCodeProblem({required AdventOfCodeInputFunction getInputFcn})
    : _getInputFcn = getInputFcn;

  /// The input for this problem
  Future<List<String>> getInput() => _getInputFcn.call();

  /// The solution to this problem
  Future<String> solution();

  /// What is trying to be solved?
  String? getDescription() => null;

  /// What is the link to the problem?
  String? getLink() => null;
}
