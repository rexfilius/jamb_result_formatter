import 'models/models.dart';

void main() {
  welcomeMessage();
  Candidate? candidate = getCandidateDetails();
  print(candidate);
}

void welcomeMessage() {
  var message = """
  Welcome to the Jamb Result Formatter.
  This application accepts your Jamb details and prints out your result.
  Let's begin.
  """;
  print(message);
}
