import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_switch.dart';
import 'package:careme24/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ButtonHoneyCallActivItemOneScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  TextEditingController componentsixController = TextEditingController();

  TextEditingController frame7305Controller = TextEditingController();

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
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов МЧС"),
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 17),
                    child: Padding(
                        padding: getPadding(left: 23, right: 21),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 1),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomButton(
                                            width: getHorizontalSize(200),
                                            text: "Мне",
                                            margin: getMargin(top: 1),
                                            variant: ButtonVariant
                                                .GradientGreenA700GreenA70001,
                                            fontStyle: ButtonFontStyle
                                                .MontserratSemiBold18),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Платная услуга",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold12Gray50001),
                                                  CustomSwitch(
                                                      margin: getMargin(top: 5),
                                                      value: isSelectedSwitch,
                                                      onChanged: (value) {
                                                        isSelectedSwitch =
                                                            value;
                                                      })
                                                ]))
                                      ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: componentsixController,
                                  hintText: "Причина вызова",
                                  margin: getMargin(top: 16),
                                  variant: TextFormFieldVariant.FillBlue100,
                                  shape: TextFormFieldShape.CustomBorderTL10,
                                  padding: TextFormFieldPadding.PaddingT28,
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratSemiBold19,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 30,
                                          right: 25,
                                          bottom: 29),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgSettingsLightBlue900)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(80))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(right: 2),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: double.maxFinite,
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL10),
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width: double
                                                                  .maxFinite,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          329),
                                                                  padding: getPadding(
                                                                      left: 20,
                                                                      top: 27,
                                                                      right: 20,
                                                                      bottom:
                                                                          27),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .outlineGray300,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 3),
                                                                            child: Text("3.13. Пожар в лесу", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17))
                                                                      ]))),
                                                          Container(
                                                              width: double
                                                                  .maxFinite,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          329),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              10),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .fillWhiteA700,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerRight,
                                                                            child: Container(
                                                                                height: getSize(14),
                                                                                width: getSize(14),
                                                                                decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(7))))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 10,
                                                                                top: 7,
                                                                                bottom: 17),
                                                                            child: Text("3.12. Пожар в квартире", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17))
                                                                      ]))),
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 15,
                                                                      right: 20,
                                                                      bottom:
                                                                          15),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineGray3003,
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4,
                                                                            bottom:
                                                                                23),
                                                                        child: Text(
                                                                            "3.18. ",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17Bluegray300)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            146),
                                                                        margin: getMargin(
                                                                            left:
                                                                                3,
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "Застряла голова \nв проеме ",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17Bluegray300))
                                                                  ])),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      329),
                                                              padding: getPadding(
                                                                  left: 20,
                                                                  top: 25,
                                                                  right: 20,
                                                                  bottom: 25),
                                                              decoration:
                                                                  AppDecoration
                                                                      .txtFillGray200,
                                                              child: Text(
                                                                  "3.29. Запах газа в квартире",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium17Bluegray300)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      329),
                                                              padding: getPadding(
                                                                  left: 20,
                                                                  top: 28,
                                                                  right: 20,
                                                                  bottom: 28),
                                                              decoration:
                                                                  AppDecoration
                                                                      .txtOutlineGray3001,
                                                              child: Text(
                                                                  "3.11. Домашнее насилие",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium17)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      329),
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 27,
                                                                      right: 20,
                                                                      bottom:
                                                                          27),
                                                              decoration:
                                                                  AppDecoration
                                                                      .txtDividers,
                                                              child: Text(
                                                                  "3.15. Пожар в здании",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium17)),
                                                          Container(
                                                              width: double
                                                                  .maxFinite,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          329),
                                                                  padding: getPadding(
                                                                      left: 20,
                                                                      top: 14,
                                                                      right: 20,
                                                                      bottom:
                                                                          14),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .outlineGray3001,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(230),
                                                                            margin: getMargin(top: 20, right: 58),
                                                                            child: Text("3.12. Реагирования в чрезвычайных ситуациях", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17))
                                                                      ]))),
                                                          CustomTextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              controller:
                                                                  frame7305Controller,
                                                              hintText:
                                                                  "3.28. Тепловой удар",
                                                              variant:
                                                                  TextFormFieldVariant
                                                                      .FillWhiteA700,
                                                              padding:
                                                                  TextFormFieldPadding
                                                                      .PaddingT33,
                                                              fontStyle:
                                                                  TextFormFieldFontStyle
                                                                      .MontserratMedium17,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done),
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 23,
                                                                      right: 20,
                                                                      bottom:
                                                                          23),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineGray3002,
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                81),
                                                                        child: Text(
                                                                            "3.12. ",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium15Bluegray300)),
                                                                    Expanded(
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(223),
                                                                            margin: getMargin(left: 4, bottom: 63),
                                                                            child: Text("Приступ астмы, проблемы с дыханием", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium15Bluegray300)))
                                                                  ]))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
