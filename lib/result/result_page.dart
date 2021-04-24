import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                "Gerenciamento de Estado",
                style: AppTextStyles.body20bold,
              ),
              Text(
                "com 6 de 10 acertos",
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
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
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
