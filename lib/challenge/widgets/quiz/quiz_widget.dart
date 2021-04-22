import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            this.question.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 15,
          ),
          ...question.answers.map(
            (e) => AnwserWidget(
              title: e.title,
              isSelected: false,
              isRight: e.isRight,
            ),
          )
        ],
      ),
    );
  }
}
