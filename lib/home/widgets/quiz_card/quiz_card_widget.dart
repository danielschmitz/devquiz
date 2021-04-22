import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_wizard.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
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
            Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(child: Text("3 de 10", style: AppTextStyles.body11))),
                Expanded(
                  flex: 2,
                  child: ProgressIndicatorWizard(value: .3,)
                )
              ],
            )
          ],
        ));
  }
}
