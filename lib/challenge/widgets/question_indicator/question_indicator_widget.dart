import 'package:flutter/material.dart';

import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_wizard.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Questão $currentPage ",
                  style: AppTextStyles.body,
                ),
                Text("de $length ", style: AppTextStyles.body)
              ],
            ),
            SizedBox(height: 16),
            ProgressIndicatorWizard(
              value: (currentPage / length),
            )
          ],
        ),
      ),
    );
  }
}
