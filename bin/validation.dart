bool isRegisterationNumberCorrect(String regNumber) {
  try {
    var firstPart = int.parse(regNumber.substring(0, 8));
    var secondPart = regNumber.substring(8, regNumber.length);
    if (firstPart.toString().length == 8 && secondPart.length == 2) {
      return true;
    }
  } on FormatException {
    print("Error! - registeration number must be 10 characters long");
    print("first 8 characters must be numbers, and the rest must be letters.");
    isRegisterationNumberCorrect(regNumber);
  }
  return false;
}
