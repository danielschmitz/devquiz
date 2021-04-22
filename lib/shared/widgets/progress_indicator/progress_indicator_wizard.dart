import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWizard extends StatelessWidget {
  final double value;
  ProgressIndicatorWizard({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        value: value,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary));
  }
}
