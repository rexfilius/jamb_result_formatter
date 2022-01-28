import 'models/models.dart';

void main() {
  welcomeMessage();

  Candidate? candidate = getCandidateDetails();
  List<Score> scores = getScoreDetails();

  printCandidateDetails(candidate);
  printScoreDetails(scores);

  int aggregate =
      scores[0].number + scores[1].number + scores[2].number + scores[3].number;
  printAggregateScore(aggregate);
}

void welcomeMessage() {
  var message = """
  Welcome to the Jamb Result Formatter.
  This application accepts your Jamb details and prints out your result.
  Let's begin.
  """;
  print(message);
}
