import 'dart:io';

import '../jamb_details.dart';

class Score {
  final int number;
  final String subject;

  const Score({
    required this.number,
    required this.subject,
  });

  @override
  String toString() {
    return "Score(number: $number, subject: $subject)";
  }
}

List<Score> getScoreDetails() {
  print("\nSelect the four subjects.");
  print("e.g type '1' for 'Agriculture'");
  jambSubjects.forEach((key, value) => print("$key - $value"));
  List<Score> scoreList = [];

  try {
    int firstSubject, secondSubject, thirdSubject, fourthSubject;
    print("\nSelect the first subject: ");
    firstSubject = int.parse(stdin.readLineSync()!);
    print("Select the second subject: ");
    secondSubject = int.parse(stdin.readLineSync()!);
    print("Select the third subject: ");
    thirdSubject = int.parse(stdin.readLineSync()!);
    print("Select the fourth subject: ");
    fourthSubject = int.parse(stdin.readLineSync()!);

    int firstScore, secondScore, thirdScore, fourthScore;
    print("\nEnter the score for ${jambSubjects[firstSubject]}");
    firstScore = int.parse(stdin.readLineSync()!);
    print("Enter the score for ${jambSubjects[secondSubject]}");
    secondScore = int.parse(stdin.readLineSync()!);
    print("Enter the score for ${jambSubjects[thirdSubject]}");
    thirdScore = int.parse(stdin.readLineSync()!);
    print("Enter the score for ${jambSubjects[fourthSubject]}");
    fourthScore = int.parse(stdin.readLineSync()!);

    scoreList = [
      Score(number: firstScore, subject: jambSubjects[firstSubject]!),
      Score(number: secondScore, subject: jambSubjects[secondSubject]!),
      Score(number: thirdScore, subject: jambSubjects[thirdSubject]!),
      Score(number: fourthScore, subject: jambSubjects[fourthSubject]!),
    ];
  } on Exception {
    print("Error! - Invalid Input");
    getScoreDetails();
  }
  return scoreList;
}

void printAggregateScore(int score) {
  print("\n=>Aggregate Score: $score");

  if (score < 200) {
    print("Better luck next time. You failed.");
  } else {
    print("Congrats!, You Passed!");
  }
}

void printScoreDetails(List<Score> scoreList) {
  print("\n---Subject and Scores---");
  for (Score score in scoreList) {
    print("${score.subject} = ${score.number}");
  }
}
