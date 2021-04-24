import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/answser_model.dart';
import 'package:flutter/material.dart';

class AnwserWidget extends StatelessWidget {
  final AnswerModel answer;
  final String title;
  final bool isRight;
  final bool isSelected;
  final ValueChanged<bool> onTap;
  final bool disabled;
  const AnwserWidget(
      {Key? key,
      required this.title,
      required this.answer,
      this.isRight = false,
      this.disabled = false,
      required this.onTap,
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: () {
            onTap(answer.isRight);
          },
          child: Container(
            decoration: BoxDecoration(
                color: isSelected ? _selectedBorderCardRight : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(BorderSide(
                    color: isSelected
                        ? _selectedBorderCardRight
                        : AppColors.border))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(this.title,
                          style: isSelected
                              ? _selectedTextStyleRight
                              : AppTextStyles.body)),
                  Container(
                    decoration: BoxDecoration(
                        color: isSelected
                            ? _selectedColorRight
                            : AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.fromBorderSide(BorderSide(
                            color: isSelected
                                ? _selectedBorderRight
                                : AppColors.border))),
                    width: 30,
                    height: 30,
                    child: isSelected
                        ? Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.white,
                          )
                        : null,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
