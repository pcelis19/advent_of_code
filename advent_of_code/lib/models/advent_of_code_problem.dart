typedef AdventOfCodeInputFunction<T extends Object> = Future<T> Function();

abstract class AdventOfCodeProblem<T extends Object> {
  final AdventOfCodeInputFunction<T> _getInputFcn;

  const AdventOfCodeProblem({required AdventOfCodeInputFunction<T> getInputFcn})
    : _getInputFcn = getInputFcn;

  /// The input for this problem
  Future<T> getInput() => _getInputFcn.call();

  /// The solution to this problem
  Future<String> solution();

  /// What is trying to be solved?
  String? getDescription() => null;

  /// What is the link to the problem?
  String? getLink() => null;
}
