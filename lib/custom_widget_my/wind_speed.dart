import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';

class WindSpeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 40,
        margin: getMargin(bottom: 8, top: 16, left: 16, right: 16),
        padding: getPadding(left: 12, top: 19, right: 12, bottom: 19),
        decoration: AppDecoration.outlineBlack9003f3
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Скорость ветра",
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium15Bluegray800),
                Text("Москва",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold18)
              ]),
              Padding(
                padding: getPadding(left: 64),
                child: Column(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFrame8001,
                    ),
                    Text("с-в", style: AppStyle.txtMontserratRomanSemiBold22,)
                  ],
                ),
              ),
          Container(
            width: 74,
            child: Text("0.99 м/с",
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                style: AppStyle.txtMontserratRomanSemiBold32),
          )
        ]));
  }
}
