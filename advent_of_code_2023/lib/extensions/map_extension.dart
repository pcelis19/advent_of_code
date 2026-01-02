extension DartAdventOfCodeCoreMapX<T extends Object?, S> on Map<T, S> {
  void put(T key, S value) {
    this[key] = value;
  }

  /// If `key` this function will throw
  void putOrThrow(T key, S value) => update(
        key,
        (value) => throw '$key already exists in the map',
        ifAbsent: () => value,
      );

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

  /// reduces the map where
  Map<TKey, SValue> reduce<TKey, SValue>(
      MapEntry<TKey, SValue>? Function(MapEntry<T, S> entry) transformation) {
    final newEntries = <MapEntry<TKey, SValue>>[];

    for (final entry in entries) {
      final entryResult = transformation.call(entry);
      if (entryResult != null) {
        newEntries.add(entryResult);
      }
    }
    return {}..addEntries(newEntries);
  }
}
