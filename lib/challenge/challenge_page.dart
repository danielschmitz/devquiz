import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;

  ChallengePage({
    Key? key,
    required this.questions,
  }) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
                QuestionIndicatorWidget(),
              ],
            )),
      ),
      body: QuizWidget(
        question: widget.questions[0],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: NextButtonWidget.white(
                label: "Voltar",
                onTap: () {},
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Avançar",
                onTap: () {},
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
