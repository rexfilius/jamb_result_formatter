bool isJambRegNumberCorrect(String regNumber) {
  try {
    var firstPart = int.parse(regNumber.substring(0, 8));
    var secondPart = regNumber.substring(8, regNumber.length);
    if (firstPart.toString().length == 8 && secondPart.length == 2) {
      return true;
    }
  } on FormatException {
    print("Error! - Jamb number must be 8 digits and 2 letters\n");
  } on RangeError {
    print("Error! - Registeration number must be 10 characters long");
  }
  return false;
}

Map<int, String> jambSubjects = {
  1: "Agriculture",
  2: "Arabic",
  3: "Art",
  4: "Biology",
  5: "Chemistry",
  6: "Christian Religious Studies",
  7: "Commerce",
  8: "Economics",
  9: "French",
  10: "Geography",
  11: "Government",
  12: "Hausa Language",
  13: "History",
  14: "Home Economics",
  15: "Igbo Language",
  16: "Islamic Religious Studies",
  17: "Literature in English",
  18: "Mathematics",
  19: "Music",
  20: "Physics",
  21: "Principles of Accounts",
  22: "Use of English",
  23: "Yoruba Language",
};
