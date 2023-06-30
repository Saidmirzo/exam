class QuetionModel {
  final String quetion;
  final List<String> listAnswers;
  final String image;
  final String correctAnswer;
  QuetionModel({
    required this.listAnswers,
    required this.quetion,
    required this.image,
    required this.correctAnswer,
  });
}
