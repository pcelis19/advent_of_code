abstract class Problem<T extends Object?> {
  const Problem();

  Future<T> solution();
}
