import 'package:devquiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAwnsered;
  final String imagem;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      this.questionAwnsered = 0,
      required this.imagem,
      required this.level});

  get completed =>
      this.questionAwnsered.toString() + "/" + this.questions.length.toString();
}
