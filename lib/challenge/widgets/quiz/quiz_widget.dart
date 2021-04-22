import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(this.title, style: AppTextStyles.heading15 ,),
          SizedBox(height: 15,),
          AnwserWidget(title: "Kit de desenvolvimento de interface de usuário", isSelected: true, isRight: true,),
          SizedBox(height: 15,),
          AnwserWidget(title: "Acho que é uma marca de café do Himalaia",),
          SizedBox(height: 15,),
          AnwserWidget(title: "Possibilita a criação de desktops que são muito incríveis",),
        ],
      ),
    );
  }
}