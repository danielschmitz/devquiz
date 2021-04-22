import 'package:devquiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(label: "Fácil",),
                LevelButtonWidget(label: "Médio",),
                LevelButtonWidget(label: "Difícil",),
                LevelButtonWidget(label: "Perito",),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width < 760 ? 2 : MediaQuery.of(context).size.width < 900 ? 3 : MediaQuery.of(context).size.width < 1200 ? 4 : 5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.3,
                  children: [
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                    QuizCardWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}