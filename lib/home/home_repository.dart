import 'dart:convert';

import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("assets/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    List<QuizModel> quizzes = [];
    try {
      final response =
          await rootBundle.loadString("assets/database/quizzes.json");
      final list = jsonDecode(response) as List;
      quizzes = list.map((e) => QuizModel.fromMap(e)).toList();
    } on Exception catch (e) {
      print(e); // TODO
    }
    return quizzes;
  }
}
