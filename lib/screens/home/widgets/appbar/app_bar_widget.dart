import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class AppBarWidget extends PreferredSize{
  AppBarWidget({Key? key}) : super(
    key: key,
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: AppGradients.linear
            ),
          padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Olá, ", 
                    style: AppTextStyles.title,
                    children: [
                      TextSpan(text: "Victor G. Rodrigues", style: AppTextStyles.titleBold),
                    ]
                  ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://avatars.githubusercontent.com/u/63324137?v=4")
                    )
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: ScoreCardWidget()
          )
        ],
      )
    )
  );
}