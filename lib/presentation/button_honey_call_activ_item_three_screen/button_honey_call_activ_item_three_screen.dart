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
class ButtonHoneyCallActivItemThreeScreen extends StatelessWidget {
  bool isSelectedSwitch = false;

  TextEditingController componentfortyController = TextEditingController();

  TextEditingController frame7304Controller = TextEditingController();

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
                      onTapArrowleft20(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов скорой"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 22, right: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, top: 17),
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
                      Padding(
                          padding: getPadding(left: 1, top: 16, right: 1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(80),
                                    text: "Причина вызова",
                                    variant: ButtonVariant.FillBlue100,
                                    shape: ButtonShape.CustomBorderTL10,
                                    padding: ButtonPadding.PaddingT28,
                                    fontStyle:
                                        ButtonFontStyle.MontserratSemiBold19,
                                    suffixWidget: Container(
                                        margin: getMargin(left: 30),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSettingsLightBlue900))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(329),
                                        padding: getPadding(
                                            left: 19,
                                            top: 18,
                                            right: 19,
                                            bottom: 18),
                                        decoration:
                                            AppDecoration.outlineGray3002,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(226),
                                                  margin: getMargin(
                                                      top: 1, right: 64),
                                                  child: Text(
                                                      "M1.8B11 Нарушение речи, слабость в конечеостях",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium17))
                                            ]))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: componentfortyController,
                                    hintText: "M1.BA41 Сильная боль в груди",
                                    variant:
                                        TextFormFieldVariant.OutlineGray300_1,
                                    padding: TextFormFieldPadding.PaddingT29,
                                    fontStyle: TextFormFieldFontStyle
                                        .MontserratMedium17),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(329),
                                        padding: getPadding(
                                            left: 20,
                                            top: 15,
                                            right: 20,
                                            bottom: 15),
                                        decoration:
                                            AppDecoration.outlineGray3003,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(195),
                                                  margin: getMargin(top: 4),
                                                  child: Text(
                                                      "M1.NE81 Опасная травма, ранение, ДТП",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium17Bluegray300))
                                            ]))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: frame7304Controller,
                                    hintText: "3.29. Цунами",
                                    variant: TextFormFieldVariant.FillGray200,
                                    padding: TextFormFieldPadding.PaddingT29,
                                    fontStyle: TextFormFieldFontStyle
                                        .MontserratMedium17Bluegray300,
                                    textInputAction: TextInputAction.done),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(329),
                                        padding: getPadding(
                                            left: 19,
                                            top: 15,
                                            right: 19,
                                            bottom: 15),
                                        decoration:
                                            AppDecoration.outlineGray3002,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(271),
                                                  margin: getMargin(
                                                      top: 3, right: 19),
                                                  child: Text(
                                                      "M1.MD11 Асфиксия всех видов, острое нарушение дыхания",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium17))
                                            ]))),
                                CustomButton(
                                    height: getVerticalSize(80),
                                    text:
                                        "M1.5. Кровотечение сильное или внутреннее",
                                    variant: ButtonVariant.OutlineGray300_1,
                                    shape: ButtonShape.Square,
                                    fontStyle:
                                        ButtonFontStyle.MontserratMedium17),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        width: getHorizontalSize(329),
                                        padding: getPadding(
                                            left: 19,
                                            top: 4,
                                            right: 19,
                                            bottom: 4),
                                        decoration:
                                            AppDecoration.outlineGray3002,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(251),
                                                  margin: getMargin(
                                                      top: 14, right: 39),
                                                  child: Text(
                                                      "M1.6. Схватки, роды (скрыто,  добавить)",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium17))
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }
}
