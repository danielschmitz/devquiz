import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.trophy),
              Text(
                "Parabéns",
                style: AppTextStyles.heading40,
              ),
              Text(
                "Voce concluiu",
                style: AppTextStyles.body20,
              ),
              Text(
                "$title",
                style: AppTextStyles.body20bold,
              ),
              Text(
                "com $result de $length acertos",
                style: AppTextStyles.body20,
              ),
              SizedBox(
                height: 80,
              ),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: NextButtonWidget.purple(
                        label: "Compartilhar",
                        onTap: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          Share.share(
                              "DevQuiz NLW 5 Flutter - Resultado: $title Obtive $result acertos de $length.");
                        }),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: NextButtonWidget.transparent(
                        label: "Voltar ao início",
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
