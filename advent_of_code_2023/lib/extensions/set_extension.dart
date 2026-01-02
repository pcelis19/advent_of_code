extension DartAdventOfCodeCoreSetX<T> on Set<T> {
  void addOrThrow(T value) {
    if (contains(value)) {
      throw 'Unable to add $value since already exits in set';
    }
    add(value);
  }
}
