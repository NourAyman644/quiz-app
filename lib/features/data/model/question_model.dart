class QuestionModel {
  final String question;
  final List<String> answers;
  final String correct;
  final int id;

  QuestionModel({
    required this.question,
    required this.id,
    required this.answers,
    required this.correct,
  });
}
