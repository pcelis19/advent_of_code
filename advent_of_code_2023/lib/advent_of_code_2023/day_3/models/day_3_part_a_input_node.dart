sealed class Day3PartAInputNode {
  const Day3PartAInputNode();

  int get absoluteValue {
    final obj = this;
    switch (obj) {
      case Day3PartAInputNodeNumber():
        return obj.getAbsoluteValue();
      case Day3PartAInputNodeSymbol():
        throw 'Symbols do not have absoluteValue';
    }
  }
}

class Day3PartAInputNodeNumber extends Day3PartAInputNode {
  final String value;

  const Day3PartAInputNodeNumber({required this.value});

  int getAbsoluteValue() {
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
