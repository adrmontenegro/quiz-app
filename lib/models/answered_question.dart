class AnsweredQuestion {
  const AnsweredQuestion(
      {required this.index,
      required this.question,
      required this.selectedAnswer,
      required this.correctAnswer})
      : isOk = (correctAnswer == selectedAnswer);

  final int index;
  final String question;
  final String selectedAnswer;
  final String correctAnswer;
  final bool isOk;
}
