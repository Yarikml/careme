
import 'package:careme24/routes/app_routes.dart';
import 'package:careme24/theme/app_decoration.dart';
import 'package:careme24/theme/app_style.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_drop_down.dart';
import 'package:careme24/widgets/custom_image_view.dart';
import 'package:careme24/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

import 'core/utils/color_constant.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/size_utils.dart';

class AboutHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "О больнице"),
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBR301,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgArrowleft),
                                              fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(224),
                                                width: getHorizontalSize(375),
                                                radius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(
                                                            getHorizontalSize(
                                                                100))))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(245),
                                  margin: getMargin(left: 23, top: 16),
                                  child: Text(
                                      "Городская больница № 6 \nим.Семашко",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratBold18)),
                              Padding(
                                  padding: getPadding(left: 22, top: 6),
                                  child: Text("ул. Семашко, 6, Симферополь",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium15)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 23, top: 12, right: 23),
                                      padding: getPadding(
                                          left: 9, top: 8, right: 9, bottom: 8),
                                      decoration: AppDecoration
                                          .outlineBlack90054
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(127),
                                                margin: getMargin(
                                                    left: 3,
                                                    top: 10,
                                                    bottom: 7),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "ПН-ПТ:",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                      TextSpan(
                                                          text: " ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text: " 07:30 ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text: "-",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text: " 16:00 \n",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      TextSpan(
                                                          text:
                                                              "Перерыв: 11:45 - 12:15",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .blue60001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("+7 (383) 315‒96‒80",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium15Bluegray800),  Text("+7 (383) 315‒96‒80",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium15Bluegray800),  Text("+7 (383) 315‒96‒80",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium15Bluegray800),

                                                ])
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 23, top: 18),
                                  child: Text("Отзывы о больнице",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtH1)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 23, top: 13, right: 25),
                                      padding: getPadding(all: 10),
                                      decoration: AppDecoration
                                          .outlineBlack90054
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse152,
                                                      height: getSize(37),
                                                      width: getSize(37),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 2,
                                                          bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Яна Романова",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium15Bluegray800),
                                                            Text("Москва",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium10)
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 101,
                                                          top: 5,
                                                          bottom: 12),
                                                      child: Text("4.7",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular15)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant.imgStarGold,
                                                      height: getSize(11),
                                                      width: getSize(11),
                                                      margin: getMargin(
                                                          left: 5,
                                                          top: 9,
                                                          bottom: 17))
                                                ]),
                                            Container(
                                                width: getHorizontalSize(293),
                                                margin: getMargin(
                                                    top: 9,
                                                    right: 13,
                                                    bottom: 5),
                                                child: Text(
                                                    "Я благодарна Иванову Алексею Петровичу, за чуткость \nи профессионализм, благодаря ему я избежала больницы и успешно вылечилиась дома! Он отличный врач и приятный человек!",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium10Bluegray800))
                                          ]))),
                              Container(
                                  height: getVerticalSize(399),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 18),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(1),
                                            width: getHorizontalSize(11),
                                            alignment: Alignment.topRight,
                                            margin:
                                                getMargin(top: 57, right: 75)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .outlineBlack90011
                                                    .copyWith(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImageConstant
                                                                    .imgCar),
                                                            fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width: double
                                                              .maxFinite,
                                                          child: Container(
                                                              width: double
                                                                  .maxFinite,
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 13,
                                                                      right: 20,
                                                                      bottom:
                                                                          13),
                                                              decoration: AppDecoration
                                                                  .outlineBlack90014
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderBL10),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "Карла маркаса 20/2а",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratMedium15),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                52),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Padding(padding: getPadding(top: 3), child: Text("Путь", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium15Bluegray800)),
                                                                              Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(183), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray300, indent: getHorizontalSize(6)))),
                                                                              Padding(padding: getPadding(left: 6), child: Text("200 м", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtH1))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                7,
                                                                            right:
                                                                                8,
                                                                            bottom:
                                                                                5),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Padding(padding: getPadding(top: 3), child: Text("Время ожидания", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium15Bluegray800)),
                                                                              Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(82), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray300, indent: getHorizontalSize(7)))),
                                                                              Padding(padding: getPadding(left: 6), child: Text("7 мин 30 с", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtH1))
                                                                            ]))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  175),
                                                          width:
                                                              getHorizontalSize(
                                                                  66),
                                                          margin: getMargin(
                                                              top: 52,
                                                              right: 100,
                                                              bottom: 58),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: SizedBox(
                                                                        height: getVerticalSize(
                                                                            89),
                                                                        child: VerticalDivider(
                                                                            width:
                                                                                getHorizontalSize(3),
                                                                            thickness: getVerticalSize(3),
                                                                            color: ColorConstant.pink600,
                                                                            endIndent: getHorizontalSize(19)))),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLightbulb,
                                                                    height:
                                                                        getSize(
                                                                            28),
                                                                    width:
                                                                        getSize(
                                                                            28),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img2,
                                                                    height:
                                                                        getVerticalSize(
                                                                            94),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            66),
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter)
                                                              ]))
                                                    ])))
                                      ]))
                            ])))),
            bottomNavigationBar:Padding(
                padding: getPadding(top:8, bottom: 8, left: 12,right: 12),
                child: CustomButton(

                onTap: (){},
                text: "Вызвать",

                variant: ButtonVariant.OutlineIndigo20049_1,
                fontStyle: ButtonFontStyle.MontserratRomanSemiBold18))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
