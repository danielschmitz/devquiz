import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/core/app_extensions.dart';
import 'package:devquiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onChange;
  const QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            this.widget.question.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 15,
          ),
          ...widget.question.answers.mapIndexed(
            (i, e) => AnwserWidget(
              disabled: indexSelected != -1,
              title: e.title,
              isSelected: indexSelected == i,
              isRight: e.isRight,
              answer: e,
              onTap: (isRight) {
                indexSelected = i;
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((_) => widget.onChange(isRight));
              },
            ),
          )
        ],
      ),
    );
  }
}
