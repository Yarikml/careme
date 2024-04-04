import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GeneralInformationScreen extends StatelessWidget {
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
                      onTapArrowleft37(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Вызов"),

                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 36, bottom: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame8027143x143,
                          height: getSize(143),
                          width: getSize(143),
                          radius: BorderRadius.circular(getHorizontalSize(71)),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 110)),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgLightbulbPink30001,
                                    height: getVerticalSize(22),
                                    width: getHorizontalSize(21),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 13, top: 1),
                                    child: Text("Мамулечка",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtH1)),
                                Padding(
                                    padding:
                                        getPadding(left: 14, top: 2, bottom: 2),
                                    child: Text("52 года",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Blue600))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16),
                              padding: getPadding(left: 23, right: 23),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 19,
                                            top: 16,
                                            right: 19,
                                            bottom: 16),
                                        decoration:
                                            AppDecoration.outlineGray3001,
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: Text("Телефон:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 17, bottom: 2),
                                              child: Text("+7 952 934 91 24",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Blue600))
                                        ])),
                                    Container(
                                        padding: getPadding(
                                            left: 20,
                                            top: 16,
                                            right: 20,
                                            bottom: 16),
                                        decoration:
                                            AppDecoration.outlineGray3001,
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Страна:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 28, bottom: 1),
                                              child: Text("Россия",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Blue600))
                                        ])),
                                    Container(
                                        padding: getPadding(
                                            left: 22,
                                            top: 6,
                                            right: 22,
                                            bottom: 6),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 12, bottom: 10),
                                              child: Text("Адрес:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Container(
                                              width: getHorizontalSize(117),
                                              margin:
                                                  getMargin(left: 32, top: 2),
                                              child: Text(
                                                  "Ул. Пушкина д. Колотушкина",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Blue600))
                                        ]))
                                  ]))),
                      Container(
                          margin: getMargin(left: 23, top: 18, right: 23),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    width: getHorizontalSize(113),
                                    padding: getPadding(
                                        left: 9, top: 13, right: 9, bottom: 13),
                                    decoration: AppDecoration.fillBluegray800,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFrame8073WhiteA700,
                                              height: getSize(28),
                                              width: getSize(28)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 7, bottom: 5),
                                              child: Text(" Не админ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12WhiteA700))
                                        ])),
                                Container(
                                    width: getHorizontalSize(108),
                                    padding: getPadding(
                                        left: 25,
                                        top: 13,
                                        right: 25,
                                        bottom: 13),
                                    decoration: AppDecoration.fillBluegray500,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVolumeWhiteA700,
                                              height: getSize(28),
                                              width: getSize(28)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 3, top: 6, bottom: 6),
                                              child: Text("Вкл.",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12WhiteA700))
                                        ])),
                                Container(
                                    width: getHorizontalSize(108),
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.fillGray50002,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgTrash,
                                              height: getSize(28),
                                              width: getSize(28)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 3, top: 7, bottom: 5),
                                              child: Text("Удалить",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12WhiteA700))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 23, top: 38, right: 23, bottom: 5),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: MediaQuery.of(context).size.width/2-25,
                                    text: "Звонок",
                                    variant: ButtonVariant.FillBlueA200,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingT19,
                                    fontStyle: ButtonFontStyle
                                        .MontserratSemiBold12WhiteA700,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 1),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCall))),
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: MediaQuery.of(context).size.width/2-25,
                                    text: "WhatsApp ",
                                    alignment: Alignment.center,
                                    variant: ButtonVariant.FillGreen40001,
                                    shape: ButtonShape.Square,
                                    padding: ButtonPadding.PaddingT19,
                                    fontStyle: ButtonFontStyle
                                        .MontserratSemiBold12WhiteA700,
                                  )
                              ]))
                    ]))));
  }

  onTapArrowleft37(BuildContext context) {
    Navigator.pop(context);
  }
}
