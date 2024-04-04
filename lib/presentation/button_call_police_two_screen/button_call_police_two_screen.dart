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
class ButtonCallPoliceTwoScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  TextEditingController callreasondescrController = TextEditingController();

  TextEditingController theftController = TextEditingController();

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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов полиции"),
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
                                  controller: callreasondescrController,
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
                                      margin: getMargin(left: 1, right: 1),
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
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "3.13. ", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: "Мелкое хулиганство", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500))
                                                                                ]),
                                                                                textAlign: TextAlign.left))
                                                                      ]))),
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 5,
                                                                      right: 10,
                                                                      bottom:
                                                                          5),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                3,
                                                                            bottom:
                                                                                44),
                                                                        child: Text(
                                                                            "3.11.",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17)),
                                                                    Expanded(
                                                                        child: Container(
                                                                            width: getHorizontalSize(254),
                                                                            margin: getMargin(left: 3, top: 3),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "П", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: "роведения ", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: "демонстрации", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: ", митинга,", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: "пикетирования", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: ", шествия или ", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                  TextSpan(text: "собрания", style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(17), fontFamily: 'Montserrat', fontWeight: FontWeight.w500))
                                                                                ]),
                                                                                textAlign: TextAlign.left))),
                                                                    Container(
                                                                        height: getSize(
                                                                            14),
                                                                        width: getSize(
                                                                            14),
                                                                        margin: getMargin(
                                                                            top:
                                                                                4,
                                                                            bottom:
                                                                                50),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(7))))
                                                                  ])),
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 5,
                                                                      right: 20,
                                                                      bottom:
                                                                          5),
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
                                                                                3,
                                                                            bottom:
                                                                                44),
                                                                        child: Text(
                                                                            "3.11.",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17)),
                                                                    Expanded(
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(232),
                                                                            margin: getMargin(left: 3, top: 2),
                                                                            child: Text("Пропаганда либо публич. демонстрирование нацистской атрибутики", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17)))
                                                                  ])),
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
                                                                      .fillGray200,
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
                                                                            "3.29. ",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17Bluegray300)),
                                                                    Expanded(
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(223),
                                                                            margin: getMargin(left: 3, top: 3),
                                                                            child: Text("Возбуждение ненависти либо вражды", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17Bluegray300)))
                                                                  ])),
                                                          CustomTextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              controller:
                                                                  theftController,
                                                              hintText:
                                                                  "3.11. Кража",
                                                              variant:
                                                                  TextFormFieldVariant
                                                                      .Dividers,
                                                              padding:
                                                                  TextFormFieldPadding
                                                                      .PaddingT29,
                                                              fontStyle:
                                                                  TextFormFieldFontStyle
                                                                      .MontserratMedium17,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done),
                                                          Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 14,
                                                                      top: 6,
                                                                      right: 14,
                                                                      bottom:
                                                                          6),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineGray3001,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                43),
                                                                        child: Text(
                                                                            "3.15.",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium17)),
                                                                    Expanded(
                                                                        child: Container(
                                                                            width:
                                                                                getHorizontalSize(256),
                                                                            margin: getMargin(left: 4, top: 2),
                                                                            child: Text("Мешают спать по ночам или вызывают беспорядки в общественном месте", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium17)))
                                                                  ])),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      329),
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 29,
                                                                      right: 20,
                                                                      bottom:
                                                                          29),
                                                              decoration:
                                                                  AppDecoration
                                                                      .txtDividers,
                                                              child: Text(
                                                                  "3.12. Повреждения имущества",
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
                                                              padding: getPadding(
                                                                  left: 20,
                                                                  top: 30,
                                                                  right: 20,
                                                                  bottom: 30),
                                                              decoration:
                                                                  AppDecoration
                                                                      .txtFillWhiteA700,
                                                              child: Text(
                                                                  "3.28. Тепловой удар",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratMedium17)),
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

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
