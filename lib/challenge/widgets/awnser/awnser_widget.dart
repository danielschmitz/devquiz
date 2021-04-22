import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnwserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;
  const AnwserWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.lightGreen : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? _selectedBorderCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: isSelected ? _selectedBorderCardRight : AppColors.border))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(this.title, style: isSelected ? _selectedTextStyleRight : AppTextStyles.body)),
            Container(
              decoration: BoxDecoration(
                  color: isSelected ? _selectedColorRight : AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.fromBorderSide(
                      BorderSide(color: isSelected ? _selectedBorderRight : AppColors.border))),
              width: 30,
              height: 30,
              child: isSelected ? Icon(Icons.check, size: 16,color: Colors.white,) : null,
            )
          ],
        ),
      ),
    );
  }
}
