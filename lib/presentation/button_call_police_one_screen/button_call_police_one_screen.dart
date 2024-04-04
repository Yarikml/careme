import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_drop_down.dart';
import 'package:careme24/widgets/custom_radio_button.dart';
import 'package:careme24/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ButtonCallPoliceOneScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  String radioGroup = "";

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
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов полиции"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 22, top: 17, right: 22, bottom: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    width: getHorizontalSize(200),
                                    text: "Мне",
                                    margin: getMargin(top: 1),
                                    variant: ButtonVariant
                                        .GradientGreenA700GreenA70001,
                                    fontStyle:
                                        ButtonFontStyle.MontserratSemiBold18),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Платная услуга",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold12Gray50001),
                                          CustomSwitch(
                                              margin: getMargin(top: 5),
                                              value: isSelectedSwitch,
                                              onChanged: (value) {
                                                isSelectedSwitch = value;
                                              })
                                        ]))
                              ])),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 20),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownLightBlue900)),
                          hintText: "Проведение дем...",
                          margin: getMargin(top: 16),
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      GestureDetector(
                          onTap: () {
                            onTapCallbuttons(context);
                          },
                          child: Container(
                              margin: getMargin(left: 11, top: 20, right: 11),
                              padding: getPadding(
                                  left: 66, top: 32, right: 66, bottom: 32),
                              decoration: AppDecoration.outlineBlack90033
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgGroup7506WhiteA700,
                                        height: getSize(162),
                                        width: getSize(162)),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Text("Вызвать полицию",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold18))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(
                                  left: 1, top: 20, right: 1, bottom: 5),
                              decoration: AppDecoration.outlineBlack9003d
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 14),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.indigoA100,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBR30),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(81),
                                                      width:
                                                          getHorizontalSize(64),
                                                      padding: getPadding(
                                                          left: 13,
                                                          top: 27,
                                                          right: 13,
                                                          bottom: 27),
                                                      decoration: AppDecoration
                                                          .fillIndigoA100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderBR30),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrameWhiteA700,
                                                            height:
                                                                getVerticalSize(
                                                                    27),
                                                            width:
                                                                getHorizontalSize(
                                                                    35),
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ]))),
                                              Expanded(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 10,
                                                          bottom: 14),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        221),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            17),
                                                                child: Text(
                                                                    "Участковый пункт полиции № 1 по району Арбат",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold15Blue600)),
                                                            Text(
                                                                "ул. Ильинка, 3/8, стр. 5, Москва, 109012",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium12Gray50001)
                                                          ])))
                                            ])),
                                    Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300),
                                    Padding(
                                        padding: getPadding(left: 14, top: 13),
                                        child: Row(children: [
                                          Text("1200м",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium15Bluegray800),
                                          Padding(
                                              padding: getPadding(left: 21),
                                              child: Text("30 мин",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Bluegray800)),
                                          Padding(
                                              padding: getPadding(left: 21),
                                              child: Text("4.7",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Bluegray800)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector12x12,
                                              height: getSize(12),
                                              width: getSize(12),
                                              margin: getMargin(
                                                  left: 3, top: 3, bottom: 3))
                                        ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 14,
                                                top: 17,
                                                right: 12,
                                                bottom: 11),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomRadioButton(
                                                      text:
                                                          "Оставить по умолчанию",
                                                      iconSize:
                                                          getHorizontalSize(10),
                                                      value:
                                                          "Оставить по умолчанию",
                                                      groupValue: radioGroup,
                                                      fontStyle: RadioFontStyle
                                                          .MontserratMedium10,
                                                      onChange: (value) {
                                                        radioGroup = value;
                                                      }),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector87,
                                                      height:
                                                          getVerticalSize(9),
                                                      width:
                                                          getHorizontalSize(5),
                                                      margin: getMargin(
                                                          top: 1, bottom: 2))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapCallbuttons(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.trackingOneScreen);
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
