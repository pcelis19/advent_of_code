extension DartAdventOfCodeCoreMapX<T extends Object?, S> on Map<T, S> {
  void put(T key, S value) {
    this[key] = value;
  }

  S? get(T key) => this[key];

  void whenKeyIs({
    required T key,
    required void Function() absent,
    required void Function(S value) present,
  }) {
    final value = get(key);
    if (value == null) {
      absent.call();
    } else {
      present.call(value);
    }
  }
}
