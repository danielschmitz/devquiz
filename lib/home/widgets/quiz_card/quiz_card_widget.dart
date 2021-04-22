import 'package:flutter/material.dart';

import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_wizard.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;
  final VoidCallback onTap;
  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border:
                  Border.fromBorderSide(BorderSide(color: AppColors.border)),
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(AppImages.blocks),
                height: 40,
                width: 40,
              ),
              SizedBox(height: 24),
              Text(title, style: AppTextStyles.heading15),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: Text(completed, style: AppTextStyles.body11))),
                  Expanded(
                      flex: 2,
                      child: ProgressIndicatorWizard(
                        value: percent,
                      ))
                ],
              )
            ],
          )),
    );
  }
}
