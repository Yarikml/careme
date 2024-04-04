import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallActivButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray800,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 5,
            bottom: 5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame8027183x183,
                height: getSize(
                  183,
                ),
                width: getSize(
                  183,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    91,
                  ),
                ),
                margin: getMargin(
                  top: 133,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                ),
                child: Text(
                  "Мамулечка",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold26,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "00:45",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium15,
                ),
              ),
              Spacer(),
              Container(
                width: double.maxFinite,
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
