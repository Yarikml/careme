import 'package:careme24/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../theme/app_style.dart';
import '../widgets/custom_image_view.dart';
import 'mes_call.dart';
import 'mes_recomendation.dart';

class WhatDoMESCard extends StatelessWidget {
  late Color color_icon;
  late String icon_path;
  late String action_text;

  WhatDoMESCard({
    required this.color_icon,
    required this.icon_path,
    required this.action_text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (action_text == "Рекомендации") {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MESRecomendation()));
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CallMESScreen(action_text)));
        }
      },
      child: Card(
        margin: getMargin(bottom: 24),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(2),
              topLeft: Radius.circular(2),
              topRight: Radius.circular(2)),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(2),
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2)),
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 96,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(44),
                        bottomLeft: Radius.circular(2),
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2)),
                    color: color_icon),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                    svgPath: icon_path,
                  ),
                ]),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      action_text,
                      style: AppStyle.txtMontserratSemiBold18Black900,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
