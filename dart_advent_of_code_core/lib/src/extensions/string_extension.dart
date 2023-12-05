/// if input is a number
RegExp _digitsRegex = RegExp(r"^\d+$");

extension DartAdventOfCodeCoreStringX on String {
  void forEachLetter(void Function(String char, int charIndex) fcn) {
    for (int index = 0; index < length; index++) {
      fcn.call(this[index], index);
    }
  }

  bool isNumber() => _digitsRegex.hasMatch(this);
}
