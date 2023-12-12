sealed class Day3PartAInputNode {
  const Day3PartAInputNode();
}

class Day3PartAInputNodeNumber extends Day3PartAInputNode {
  final String value;

  const Day3PartAInputNodeNumber({required this.value});

  int get absoluteValue {
    return int.parse(value);
  }

  @override
  String toString() => value;
}

class Day3PartAInputNodeSymbol extends Day3PartAInputNode {
  final String value;
  const Day3PartAInputNodeSymbol(this.value);

  @override
  String toString() => value;
}
