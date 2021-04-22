import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  //HomeState state = HomeState.empty;
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);

  HomeState get state => stateNotifier.value;
  set state(HomeState state) => stateNotifier.value = state;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Daniel",
      photoUrl: "https://avatars.githubusercontent.com/u/1509692?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          questionAwnsered: 1,
          level: Level.facil,
          questions: [
            QuestionModel(title: "Esta curtindo o flutter?", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "É.. mais ou menos"),
            ]),
            QuestionModel(title: "Mais uma pergunta", awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorando"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "É.. mais ou menos"),
            ]),
          ])
    ];
    state = HomeState.success;
  }
}
