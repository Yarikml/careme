import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HeckoutScreen extends StatelessWidget {
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
                      onTapArrowleft47(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Оформление заказа"),
                styleType: Style.bgFillBlue60001),
            body: SingleChildScrollView(child:Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 18, right: 23, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1, top: 4),
                              padding: getPadding(
                                  left: 10, top: 11, right: 10, bottom: 11),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgLocationBlueGray800,
                                          height: getSize(15),
                                          width: getSize(15),
                                          margin: getMargin(bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 6, top: 1),
                                          child: Text("Доставка в пункт выдачи",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold12))
                                    ]),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(271),
                                            margin: getMargin(
                                                left: 21, top: 3, right: 15),
                                            child: Text(
                                                "Новосибирская обл., г. Бердск, ул, Ленина, д. 38, 63009",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium12))),
                                    CustomButton(
                                      onTap:(){Navigator.pushNamed(context, AppRoutes.twoScreen);},
                                        height: getVerticalSize(35),
                                        text: "Изменить адрес",
                                        margin: getMargin(top: 10),
                                        variant: ButtonVariant.OutlineGray50001,
                                        shape: ButtonShape.RoundedBorder15,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle: ButtonFontStyle
                                            .MontserratRomanSemiBold12),
                                    Padding(
                                        padding: getPadding(left: 9, top: 18),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFrame7694,
                                              height: getSize(15),
                                              width: getSize(15)),
                                          Padding(
                                              padding: getPadding(left: 6),
                                              child: Text(
                                                  "Генадий Анатольевич ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 30, top: 3),
                                        child: Text("+7 953 995 97 93",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium12)),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 14, bottom: 1),
                                        child: Text(
                                            "Срок хранения заказа-5 дней",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium12Blue600))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(328),
                              margin: getMargin(left: 1, top: 14),
                              padding: getPadding(
                                  left: 11, top: 12, right: 11, bottom: 12),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Доставим 13-15 февраля ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold18Bluegray800),
                                    Text("1 товар",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium12Gray50001),
                                    Padding(
                                        padding: getPadding(
                                            left: 1,
                                            top: 12,
                                            right: 39,
                                            bottom: 3),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFrame7636,
                                                  height: getVerticalSize(72),
                                                  width: getHorizontalSize(75),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(10))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 11, bottom: 14),
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
                                                                    179),
                                                            child: Text(
                                                                "Мини Портативная Медицинская сумка Аптеч...",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular13Bluegray800)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Text(
                                                                "Бордовый шниц, S",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium12Gray50001))
                                                      ]))
                                            ]))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1, top: 14),
                              padding: getPadding(all: 10),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Ваш заказ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold18Bluegray800),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Товары (1)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12),
                                              Text("1 450 ₽",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold12)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Скидка",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12),
                                              Text("-345 ₽ ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold12GreenA700)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 7),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Доставка",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12),
                                              Text("Бесплатно",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold12Blue600)
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 3),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Итого",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold18Black900),
                                              Text("1 450 ₽",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold18Black900)
                                            ]))
                                  ])))
                    ]))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 20, right: 26, bottom: 40),
                decoration: AppDecoration.gradientWhiteA700WhiteA70000,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          text: "Оплатить заказ",
                          variant: ButtonVariant.OutlineIndigo20049_1,
                          fontStyle: ButtonFontStyle.MontserratRomanSemiBold18,
                          onTap: () {
                            onTaptf(context);
                          }),
                      Container(
                          width: getHorizontalSize(327),
                          margin: getMargin(top: 8),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Нажимая на кнопку, вы соглашаетесь с ",
                                    style: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Условиями",
                                    style: TextStyle(
                                        color: ColorConstant.blue600,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "обработки перс. данных",
                                    style: TextStyle(
                                        color: ColorConstant.blue600,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: ", а также с ",
                                    style: TextStyle(
                                        color: ColorConstant.gray50001,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Условиями продажи",
                                    style: TextStyle(
                                        color: ColorConstant.blue600,
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentDefoultScreen);
  }

  onTapArrowleft47(BuildContext context) {
    Navigator.pop(context);
  }
}
