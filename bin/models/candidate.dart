import 'dart:io';

import '../jamb_details.dart';

class Candidate {
  final String firstName;
  final String middleName;
  final String lastName;
  final String registerationNumber;

  Candidate({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.registerationNumber,
  });

  @override
  String toString() {
    return "Canidate(firstName: $firstName, middleName: $middleName, " +
        "lastName: $lastName, registerationNumber: $registerationNumber)";
  }
}

Candidate? getCandidateDetails() {
  Candidate? candidate;

  print("Type in your first name: ");
  var firstName = stdin.readLineSync();
  print("Type in your middle name: ");
  var middleName = stdin.readLineSync();
  print("Type in your last name: ");
  var lastName = stdin.readLineSync();
  print("Type in your registeration number: ");
  var regNumber = stdin.readLineSync();

  if (firstName!.isEmpty ||
      middleName!.isEmpty ||
      lastName!.isEmpty ||
      regNumber!.isEmpty) {
    print("Error! - At least one of you input is null. Input can't be null.");
    getCandidateDetails();
  } else {
    bool isNumberCorrect = isJambRegNumberCorrect(regNumber);
    if (isNumberCorrect == true) {
      candidate = Candidate(
          firstName: firstName,
          middleName: middleName,
          lastName: lastName,
          registerationNumber: regNumber);
    } else {
      getCandidateDetails();
    }
  }

  return candidate;
}
