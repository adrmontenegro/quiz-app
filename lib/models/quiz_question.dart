class QuizQuestion {
  const QuizQuestion({required this.question, required this.options});

  final String question;
  final List<String> options;

  List<String> getShuffledOptions(){
    List<String> optionsCopy = List.of(options);
    optionsCopy.shuffle();
    return optionsCopy;
  }
}
