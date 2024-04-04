import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallSoundOffScreen extends StatelessWidget {
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
                    left: 6,
                    top: 17,
                    right: 6,
                    bottom: 17,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgFrame8045,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          width: getHorizontalSize(
                            363,
                          ),
                          padding: getPadding(
                            top: 15,
                            bottom: 15,
                          ),
                          decoration: AppDecoration.fillBluegray800.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomAppBar(
                                height: getVerticalSize(
                                  25,
                                ),
                                centerTitle: true,
                                title: Row(
                                  children: [
                                    Text(
                                      "Мамулечка",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold18WhiteA700,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 29,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "отключил(а) микрафон",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15WhiteA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame80271,
                        height: getSize(
                          121,
                        ),
                        width: getSize(
                          121,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            60,
                          ),
                        ),
                        margin: getMargin(
                          right: 14,
                          bottom: 3,
                        ),
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
                  left: 23,
                  top: 30,
                  right: 23,
                  bottom: 30,
                ),
                decoration: AppDecoration.fillGray900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              svgPath: ImageConstant.imgCameraBlueGray800,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "Повернуть",
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
                              svgPath: ImageConstant.img1BlueGray800,
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
                            variant: IconButtonVariant.FillWhiteA70019,
                            padding: IconButtonPadding.PaddingAll15,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMicrophone,
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
