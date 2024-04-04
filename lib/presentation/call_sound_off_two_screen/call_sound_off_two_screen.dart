import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallSoundOffTwoScreen extends StatelessWidget {
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
              Container(
                height: getVerticalSize(
                  590,
                ),
                width: double.maxFinite,
                padding: getPadding(
                  all: 20,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgFrame8042,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame8027121x121,
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
                      alignment: Alignment.bottomRight,
                    ),
                    CustomIconButton(
                      height: 43,
                      width: 43,
                      margin: getMargin(
                        bottom: 91,
                      ),
                      variant: IconButtonVariant.FillBluegray800,
                      shape: IconButtonShape.RoundedBorder21,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFrame8041Gray300,
                      ),
                    ),
                  ],
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
