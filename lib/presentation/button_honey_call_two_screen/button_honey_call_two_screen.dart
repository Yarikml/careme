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
class ButtonHoneyCallTwoScreen extends StatelessWidget {
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
                      onTapArrowleft18(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов скорой"),
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
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 16),
                          color: ColorConstant.blue100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Container(
                              height: getVerticalSize(82),
                              width: getHorizontalSize(330),
                              decoration: AppDecoration.fillBlue100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("3.12.",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold19)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 3, top: 1),
                                                  child: Text(
                                                      "Гипертонический...",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold19)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: getVerticalSize(15),
                                                  width: getHorizontalSize(8),
                                                  margin: getMargin(
                                                      left: 31,
                                                      top: 3,
                                                      bottom: 6))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(right: 1),
                                        padding: getPadding(
                                            left: 20,
                                            top: 13,
                                            right: 20,
                                            bottom: 13),
                                        decoration: AppDecoration.fillBlue100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomDropDown(
                                                  focusNode: FocusNode(),
                                                  icon: Container(
                                                      margin:
                                                          getMargin(left: 30),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdownLightBlue900)),
                                                  hintText:
                                                      "M1.BA41 Сильная боль \nв груди...",
                                                  margin: getMargin(top: 2),
                                                  variant: DropDownVariant.None,
                                                  items: dropdownItemList,
                                                  onChanged: (value) {})
                                            ])))
                              ]))),
                      Container(
                          margin: getMargin(left: 11, top: 18, right: 11),
                          padding: getPadding(
                              left: 73, top: 31, right: 73, bottom: 31),
                          decoration: AppDecoration.outlineBlack90033.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
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
                                    padding: getPadding(top: 12),
                                    child: Text("Вызвать скорую",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold18))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: GestureDetector(
                              onTap: () {
                                onTapHospitalcard(context);
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 1, top: 20, right: 1, bottom: 5),
                                  decoration: AppDecoration.outlineBlack9003d1
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
                                        Padding(
                                            padding: getPadding(right: 51),
                                            child: Row(children: [
                                              Container(
                                                  height: getVerticalSize(81),
                                                  width: getHorizontalSize(64),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle2626,
                                                            height:
                                                                getVerticalSize(
                                                                    81),
                                                            width:
                                                                getHorizontalSize(
                                                                    61),
                                                            radius: BorderRadius.only(
                                                                topLeft: Radius.circular(
                                                                    getHorizontalSize(
                                                                        10)),
                                                                bottomLeft:
                                                                    Radius.circular(
                                                                        getHorizontalSize(
                                                                            10)),
                                                                bottomRight:
                                                                    Radius.circular(
                                                                        getHorizontalSize(
                                                                            30))),
                                                            alignment: Alignment
                                                                .centerLeft),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: getVerticalSize(
                                                                    81),
                                                                width:
                                                                    getHorizontalSize(
                                                                        64),
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            color: ColorConstant
                                                                                .blueGray100,
                                                                            width: getHorizontalSize(
                                                                                1)),
                                                                        right: BorderSide(
                                                                            color:
                                                                                ColorConstant.blueGray100,
                                                                            width: getHorizontalSize(1))))))
                                                      ])),
                                              Expanded(
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 11,
                                                          bottom: 11),
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
                                                                        201),
                                                                child: Text(
                                                                    "Городская больница № 6 \nим.Семашко",
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold15Blue600)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 4),
                                                                child: Text(
                                                                    "ул. Семашко, 6, Симферополь",
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
                                            padding:
                                                getPadding(left: 14, top: 14),
                                            child: Row(children: [
                                              Text("1200м",
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                  imagePath: ImageConstant
                                                      .imgVector12x12,
                                                  height: getSize(14),
                                                  width: getSize(14),
                                                  margin: getMargin(
                                                      left: 3,
                                                      top: 2,
                                                      bottom: 3))
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
                                                              getHorizontalSize(
                                                                  10),
                                                          value:
                                                              "Оставить по умолчанию",
                                                          groupValue:
                                                              radioGroup,
                                                          fontStyle: RadioFontStyle
                                                              .MontserratMedium10,
                                                          onChange: (value) {
                                                            radioGroup = value;
                                                          }),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector87,
                                                          height:
                                                              getVerticalSize(
                                                                  9),
                                                          width:
                                                              getHorizontalSize(
                                                                  5),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 2))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapHospitalcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.hospitalsScreen);
  }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}
