import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallActivVideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray800,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: getPadding(
                    left: 23,
                    top: 11,
                    right: 23,
                    bottom: 11,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgFrame8042,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomButton(
                        text: "Запустить трансляцию",
                        variant: ButtonVariant.OutlineIndigo20049_1,
                        fontStyle: ButtonFontStyle.MontserratRomanSemiBold18,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: getMargin(
                  bottom: 5,
                ),
                padding: getPadding(
                  top: 30,
                  bottom: 30,
                ),
                decoration: AppDecoration.fillGray900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 31,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 58,
                            width: 58,
                            variant: IconButtonVariant.FillGray300,
                            padding: IconButtonPadding.PaddingAll15,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFrame8040Black900,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "Громкая",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium12WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 31,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 58,
                            width: 58,
                            variant: IconButtonVariant.FillGray300,
                            padding: IconButtonPadding.PaddingAll15,
                            child: CustomImageView(
                              svgPath: ImageConstant.img1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "Выкл. видео",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium12WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 31,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 58,
                            width: 58,
                            variant: IconButtonVariant.FillGray300,
                            padding: IconButtonPadding.PaddingAll15,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgFrame8041,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "Выкл. звук",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium12WhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 66,
                        bottom: 31,
                      ),
                      child: Text(
                        "Завершить",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratMedium12WhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 58,
          width: 58,
          child: CustomImageView(
            svgPath: ImageConstant.imgCar,
            height: getVerticalSize(
              29.0,
            ),
            width: getHorizontalSize(
              29.0,
            ),
          ),
        ),
      ),
    );
  }
}
