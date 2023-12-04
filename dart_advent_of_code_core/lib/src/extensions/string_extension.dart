/// if input is a number
RegExp _digitsRegex = RegExp(r"^\d+$");

extension DartAdventOfCodeCoreStringX on String {
  void perLetter(void Function(String letter) fcn) {
    for (int i = 0; i < length; i++) {
      fcn.call(this[i]);
    }
  }

  bool isNumber() => _digitsRegex.hasMatch(this);
}
