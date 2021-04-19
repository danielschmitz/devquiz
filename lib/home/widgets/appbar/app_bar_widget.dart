import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              decoration: BoxDecoration(gradient: AppGradients.linear),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text("Olá, Daniel", style: AppTextStyles.title),
                    Text.rich(
                      TextSpan(text: "Olá, ", style: AppTextStyles.title, children: [
                        TextSpan(text: "Daniel", style: AppTextStyles.titleBold)
                      ]),
                    ),
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: NetworkImage("https://avatars.githubusercontent.com/u/1509692?v=4"))),
                    )
                  ],
                ),
              ),
            ));
}
