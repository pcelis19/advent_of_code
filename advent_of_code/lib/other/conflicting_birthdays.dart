import 'dart:math';

const kNumberofDays = 365;

/// When `randomGenerator` is given new instances of [Random] will not be
/// generated.
void runConflictingBirthdaysProgram({
  Random? randomGenerator,
}) {
  const int kTimesToRunExperiment = 100;
  const numberOfPeople = 23;
  const numberOfTimesRunExperiment = 100;
  var highestRate = -1.0;
  var timeOccurred = <int>[];
  print(
      //
      "numberOfPeople: $numberOfPeople\n"
      "numberOfTimesRunExperiment: $numberOfTimesRunExperiment");

  for (int i = 0; i < kTimesToRunExperiment; i++) {
    final timesTwoSharedBirthday = _runExperiment(
      numberOfPeople: 23,
      numberOfTimesRunExperiment: 100,
      randomGenerator: randomGenerator,
    );
    final rateTwoSharedBirthday =
        timesTwoSharedBirthday / numberOfTimesRunExperiment;
    if (rateTwoSharedBirthday > highestRate) {
      highestRate = rateTwoSharedBirthday;
      timeOccurred = [i];
    } else if (rateTwoSharedBirthday == highestRate) {
      timeOccurred.add(i);
    }
    print(
        //
        "($i) timesTwoSharedBirthday: $timesTwoSharedBirthday, rateTwoSharedBirthday: $rateTwoSharedBirthday");
  }
  print('HIGHEST_RATE: $highestRate, and occurred in $timeOccurred');
}

int _runExperiment({
  required int numberOfPeople,
  required int numberOfTimesRunExperiment,
  required Random? randomGenerator,
}) {
  int timesTwoSharedBirthday = 0;
  for (int i = 0; i < numberOfTimesRunExperiment; i++) {
    final didTwoShareBirthday =
        _doesTwoShareBirthday(numberOfPeople, randomGenerator);
    if (didTwoShareBirthday) {
      timesTwoSharedBirthday++;
    }
  }
  return timesTwoSharedBirthday;
}

bool _doesTwoShareBirthday(int numberOfPeople, Random? random) {
  final birthdays = <int>{};
  for (int i = 0; i < numberOfPeople; i++) {
    final _rand = random ?? Random();
    final personsBirthday = _rand.nextInt(kNumberofDays);
    if (birthdays.contains(personsBirthday)) {
      return true;
    } else {
      birthdays.add(personsBirthday);
    }
  }
  return false;
}
