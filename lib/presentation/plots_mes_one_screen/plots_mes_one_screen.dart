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
class PlotsMesOneScreen extends StatelessWidget {
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
                      onTapArrowleft11(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов МЧС"),
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
                          hintText: "Домашнее насил...",
                          margin: getMargin(top: 16),
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      Container(
                          width: getHorizontalSize(308),
                          margin: getMargin(left: 11, top: 20, right: 11),
                          padding: getPadding(
                              left: 68, top: 29, right: 68, bottom: 29),
                          decoration: AppDecoration.outlineBlack90033.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgGroup7506WhiteA700,
                                    height: getSize(157),
                                    width: getSize(157),
                                    margin: getMargin(top: 11)),
                                Padding(
                                    padding: getPadding(top: 10, right: 14),
                                    child: Text("Вызвать МЧС",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold18))
                              ])),
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
                                        padding: getPadding(right: 30),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.yellow700,
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
                                                          left: 16,
                                                          top: 22,
                                                          right: 16,
                                                          bottom: 22),
                                                      decoration: AppDecoration
                                                          .fillYellow700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderBR30),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFire,
                                                            height:
                                                                getVerticalSize(
                                                                    37),
                                                            width:
                                                                getHorizontalSize(
                                                                    29),
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ]))),
                                              Expanded(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 11,
                                                          bottom: 31),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("МЧС",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold15Blue600),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "ул. Пречистенка, 22, Москва, 119034",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium12Gray50001))
                                                          ])))
                                            ])),
                                    Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray300),
                                    Padding(
                                        padding: getPadding(left: 14, top: 14),
                                        child: Row(children: [
                                          Text("1200м",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium16),
                                          Padding(
                                              padding: getPadding(left: 17),
                                              child: Text("30 мин",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium16)),
                                          Padding(
                                              padding: getPadding(left: 16),
                                              child: Text("4.7",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium16)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector12x12,
                                              height: getSize(14),
                                              width: getSize(14),
                                              margin: getMargin(
                                                  left: 3, top: 2, bottom: 3))
                                        ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 14,
                                                top: 15,
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

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
