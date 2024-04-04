import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

bool _isSpeaker = false;
bool _isVideo= false;
bool _isSound = true;





class CallActivScreen extends StatefulWidget {
  @override
  State<CallActivScreen> createState() => _CallActivScreenState();
}

class _CallActivScreenState extends State<CallActivScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray800,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 5,

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

                ),
                decoration: AppDecoration.fillGray900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: (){
                          _isSpeaker=!_isSpeaker;
                          setState(() {

                          });

                        },
                        child:  Padding(
                          padding: getPadding(
                            bottom: 31,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 58,
                                width: 58,
                                variant: _isSpeaker? IconButtonVariant.FillGray20002:IconButtonVariant.FillBluegray900,
                                padding: IconButtonPadding.PaddingAll15,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame8040,
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
                        )),
                    GestureDetector(
                        onTap: (){
                          _isVideo=!_isVideo;
                          setState(() {

                          });
                        },
                        child:Padding(
                          padding: getPadding(
                            bottom: 31,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 58,
                                width: 58,
                                variant: IconButtonVariant.FillGray20002,
                                padding: IconButtonPadding.PaddingAll15,
                                child: CustomImageView(
                                  svgPath: _isVideo?ImageConstant.img1BlueGray800:ImageConstant.img1,
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
                        )),
                    GestureDetector(
                        onTap: (){
                          _isSound = !_isSound;
                          setState(() {

                          });

                        },
                        child:Padding(
                          padding: getPadding(
                            bottom: 31,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 58,
                                width: 58,
                                variant: _isSound?IconButtonVariant.FillWhiteA70019:IconButtonVariant.FillGray20002,
                                padding: IconButtonPadding.PaddingAll15,
                                child: CustomImageView(
                                  svgPath: _isSound? ImageConstant.imgMicrophone:  ImageConstant.imgFrame8041,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 8,
                                ),
                                child: Text(
                                  "Вкл. звук",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium12WhiteA700,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Padding(
                      padding: getPadding(

                        bottom: 28,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 58,
                            width: 58,
                            variant: IconButtonVariant.FillRed,
                            padding: IconButtonPadding.PaddingAll15,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCar,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
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
            ],
          ),
        ),

      ),
    );
  }
}
