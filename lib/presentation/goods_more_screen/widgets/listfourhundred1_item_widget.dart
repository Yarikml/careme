import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listfourhundred1ItemWidget extends StatelessWidget {
  Listfourhundred1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: getMargin(
              right: 5,
            ),
            padding: getPadding(
              left: 6,
              top: 5,
              right: 6,
              bottom: 5,
            ),
            decoration: AppDecoration.outlineBlack9003f3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 127,
                  ),
                  child: Text(
                    "Дорожные Чехлы для... ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "4.7",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular12,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector12x12,
                        height: getSize(
                          12,
                        ),
                        width: getSize(
                          12,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 1,
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Text(
                          "123 купили",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular12Gray50001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 13,
                  ),
                  child: Text(
                    "250 ₽",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratSemiBold14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: getMargin(
              left: 5,
              bottom: 1,
            ),
            decoration: AppDecoration.outlineBlack9003f3.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    159,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgFrame721213,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: getMargin(
                          top: 93,
                        ),
                        padding: getPadding(
                          left: 5,
                          top: 3,
                          right: 5,
                          bottom: 3,
                        ),
                        decoration: AppDecoration.fillBlue600.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: getVerticalSize(
                                1,
                              ),
                              width: getHorizontalSize(
                                7,
                              ),
                              margin: getMargin(
                                top: 6,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                                right: 3,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "28",
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "%",
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "Портативная Медици...",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular12,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "4.8",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular11,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector12x12,
                        height: getSize(
                          12,
                        ),
                        width: getSize(
                          12,
                        ),
                        margin: getMargin(
                          left: 3,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Text(
                          "373 купили",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular11Gray50001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 12,
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "768",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold13,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "1 645 ₽ ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium11.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
