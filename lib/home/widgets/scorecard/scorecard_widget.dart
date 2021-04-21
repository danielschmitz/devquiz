import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, 
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.border, width: 1)
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: ChartWidget()),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vamos começar!",
                        style: AppTextStyles.heading,
                      ),
                      Text("Complete os desafios e avance em conhecimento",
                          style: AppTextStyles.body)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
