import 'package:advent_of_code_2022/days/day_1/day_1.dart';
import 'package:test/test.dart';
import 'package:tuple/tuple.dart';

typedef _InputAndAnswer = Tuple2<int, List<String>>;

extension on _InputAndAnswer {
  int get answer => item1;
  List<String> get input => item2;
}

void main() => _defineTest();

void _defineTest() {
  group('Testing that our solution works', () {
    test('When empty', () {
      _confirm(_is0Empty);
    });
    test('When only one', () {
      _confirm(_is12722Single);
    });
    group('When having three inputs', () {
      test('When is first', () {
        _confirm(_is12722Multi);
      });
      test('When is 2nd', () {
        _confirm(_is15139);
      });
      test('When is 3rd', () {
        _confirm(_is99999);
      });
    });
  });
}

Future<void> _confirm(_InputAndAnswer inputAndAnswer) async {
  final repo = MockCalorieCountingRepo(inputAndAnswer.input);
  final problem = CalorieCounting(repo: repo);
  final result = await problem.solution();
  expect(result, inputAndAnswer.answer);
}

class MockCalorieCountingRepo extends ICalorieCountingRepo {
  final List<String> _output;
  const MockCalorieCountingRepo(this._output);

  @override
  Future<List<String>> getInput() async => _output;
}

const _is15139 = _InputAndAnswer(15139, [
  '1530',
  '5956',
  '5236',
  '',
  '1479',
  '2337',
  '5443',
  '5880',
  '',
  '9111',
]);
const _is99999 = _InputAndAnswer(99999, [
  '1530',
  '5956',
  '5236',
  '',
  '1479',
  '2337',
  '5443',
  '5880',
  '',
  '99999',
]);

const _is12722Single = _InputAndAnswer(12722, [
  '1530',
  '5956',
  '5236',
]);
const _is12722Multi = _InputAndAnswer(12722, [
  '1530',
  '5956',
  '5236',
  '',
  '1',
  '',
  '2',
]);

const _is0Empty = _InputAndAnswer(0, <String>[]);
