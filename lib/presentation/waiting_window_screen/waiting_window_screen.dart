import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_floating_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:careme24/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../custom_camera_screen.dart';
import '../alert_screen/alert_screen.dart';
import '../what_to_do_read_screen/what_to_do_read_screen.dart';

class WaitingWindowScreen extends StatefulWidget {
  late String whereCall;
  late String whereCallAppBar;

  WaitingWindowScreen({
    required this.whereCall,
    required this.whereCallAppBar,
  });



  @override
  State<WaitingWindowScreen> createState() => _WaitingWindowScreenState();
}

class _WaitingWindowScreenState extends State<WaitingWindowScreen> {
  TextEditingController relativesnotifiController = TextEditingController();
  String imagePath = ImageConstant.sosButton;
  String bottomImagePath = ImageConstant.videoSmallButton;

  String centerText = "Нажмите для срочной помощи подготовленных людей";
  Widget bottomWidget = Column(
    children: [
      Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder39),
          child: Container(
              height: getSize(78),
              width: getSize(78),
              padding: getPadding(left: 21, top: 27, right: 21, bottom: 27),
              decoration: AppDecoration.outlineLightgreen90066
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder39),
              child: Stack(children: [
                CustomImageView(
                    svgPath: ImageConstant.imgVideocameraWhiteA700,
                    height: getVerticalSize(19),
                    width: getHorizontalSize(31),
                    alignment: Alignment.bottomRight)
              ]))),
      Padding(
          padding: getPadding(top: 4),
          child: Text("Видео",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUbuntuMedium12))
    ],
  );
  Widget centerWidget = Container(
      margin: getMargin(left: 111, top: 34, right: 111),
      padding: getPadding(left: 28, top: 38, right: 28, bottom: 38),
      decoration: AppDecoration.outlineRed90066
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder53),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: getPadding(top: 1),
                child: Text("SOS",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanBold22))
          ]));

  void change_widget() {
    if (centerText == "Нажмите для срочной помощи подготовленных людей") {
      imagePath = ImageConstant.videoButton;
      bottomImagePath = ImageConstant.sosSmallButton;
      centerText = "Запись видео на сервер";
    } else {
      centerText = "Нажмите для срочной помощи подготовленных людей";
      imagePath = ImageConstant.sosButton;
      bottomImagePath = ImageConstant.videoSmallButton;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: getVerticalSize(48),
          leadingWidth: 43,
          leading: AppbarImage(
              height: getVerticalSize(16),
              width: getHorizontalSize(11),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 32, top: 12, bottom: 20),
              onTap: () {
                onTapArrowleft14(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Вызов " + widget.whereCallAppBar),
          styleType: Style.bgFillBlue60001),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: getPadding(top: 10),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AlertScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      )),
                      height: 54,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(left: 16),
                            child: Container(
                                width: 24,
                                height: 24,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgInfoCircle,
                                )),
                          ),
                          Padding(
                            padding: getPadding(left: 12, right: 24),
                            child: Text(
                              "Родственники оповещены",
                              style: AppStyle.txtMontserratMedium15Black900,
                            ),
                          ),Spacer(),
                          Padding(
                            padding: getPadding(right: 15),
                            child: Container(

                                width: 24,
                                height: 24,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgCloseGray50001,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 12),
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      )),
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(top: 18, bottom: 18),
                              child: Text(
                                widget.whereCall + " ВЫЗВАНА",
                                style: AppStyle.txtMontserratSemiBold20,
                              ),
                            ),
                            Divider(
                              indent: 0,
                              height: 1,
                              thickness: 2,
                            ),
                            Padding(
                              padding: getPadding(top: 18, bottom: 12),
                              child: Text(
                                "Время ожидания 10 мин",
                                style: AppStyle.txtMontserratMedium17,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (imagePath == ImageConstant.videoButton){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => CustomCameraScreen()));
                                }
                              },
                              child: CustomImageView(
                               height: MediaQuery.of(context).size.height/7,
                                width: MediaQuery.of(context).size.height/7,

                                svgPath: imagePath,
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 12, bottom: 18),
                              child: Text(
                                centerText,
                                style: AppStyle.txtMontserratSemiBold15redtext,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(
                              indent: 0,
                              height: 1,
                              thickness: 2,
                            ),
                            Padding(
                              padding: getPadding(top: 12, bottom: 18),
                              child: Text(
                                "Отмена вызова",
                                style: AppStyle.txtMontserratSemiBold15Gray50001,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
              Padding(
                padding: getPadding(top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                              padding: getPadding(top: 20),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 58,
                                        width: 58,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgFile)),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text("Такси",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtUbuntuMedium12))
                                  ])),
                        ],
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              change_widget();
                            });
                          },
                          child: Column(
                            children: [
                              CustomImageView(
                                width: 78,
                                height: 78,
                                svgPath: bottomImagePath,
                              ),
                              Text(bottomImagePath == ImageConstant.videoSmallButton ?  "Видео" : "SOS", style: AppStyle.txtUbuntuMedium12,),
                            ],
                          ),),

                      Column(
                        children: [
                          Padding(
                              padding: getPadding(top: 20),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, AppRoutes.trackingScreen);
                                        },
                                        height: 58,
                                        width: 58,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationWhiteA700)),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text("Отследить",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtUbuntuMedium12))
                                  ])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 16),
                child: CustomButton(
                    onTap: () {
                    /*  Navigator.pushNamed(
                          context, AppRoutes.communicationTeamScreen);*/
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WhatToDoReadScreen()));
                    },
                    text: "Что делать",
                    margin: getMargin(left: 23, right: 23),
                    variant: ButtonVariant.OutlineIndigo20049,
                    fontStyle: ButtonFontStyle.MontserratRomanSemiBold18),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }
}
