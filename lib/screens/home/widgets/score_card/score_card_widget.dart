import '../widgets.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 14),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.border
          ),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white
        ),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ChartWidget()
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos Começar",
                      style: AppTextStyles.heading
                    ),
                    Text(
                      "Complete Desafios e Avance em Conhecimento",
                      style: AppTextStyles.body
                    )
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