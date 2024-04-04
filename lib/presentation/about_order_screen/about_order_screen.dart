import '../about_order_screen/widgets/aboutorder_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:careme24/presentation/confirmation_order_dialog/confirmation_order_dialog.dart';

import '../shop_screen/widgets/shop_item_widget.dart';

class AboutOrderScreen extends StatelessWidget {
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
                      onTapArrowleft46(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "О заказе"),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgFavorite,
                      margin: getMargin(left: 32, top: 8, right: 8)),
                  AppbarImage(
                      height: getSize(26),
                      width: getSize(26),
                      imagePath: ImageConstant.imgGroup7508,
                      margin: getMargin(left: 8, top: 8, right: 28, ))
                ],
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 26),
                    child: Padding(
                        padding: getPadding(left: 22, right: 23),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1, right: 2),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame7636,
                                            height: getVerticalSize(80),
                                            width: getHorizontalSize(83),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10))),
                                        Padding(
                                            padding:
                                                getPadding(left: 13, bottom: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "223894619-0001",
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
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "Заказ от 25 декабря 2022",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtMontserratMedium12Gray50001))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrameGray50001,
                                                            height:
                                                                getVerticalSize(
                                                                    23),
                                                            width:
                                                                getHorizontalSize(
                                                                    24),
                                                            margin: getMargin(
                                                                left: 50,
                                                                bottom: 13))
                                                      ]),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(27),
                                                      width:
                                                          getHorizontalSize(81),
                                                      text: "В пути",
                                                      margin:
                                                          getMargin(top: 14),
                                                      variant: ButtonVariant
                                                          .FillBluegray800,
                                                      shape: ButtonShape
                                                          .RoundedBorder7,
                                                      padding: ButtonPadding
                                                          .PaddingAll6,
                                                      fontStyle: ButtonFontStyle
                                                          .MontserratSemiBold12WhiteA700)
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 17),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Ожидаемое время доставки:",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray800,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray800,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "13-15 февраля",
                                            style: TextStyle(
                                                color: ColorConstant.blue600,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 18),
                                      padding: getPadding(
                                          left: 10,
                                          top: 11,
                                          right: 10,
                                          bottom: 11),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFrame7694,
                                                  height: getSize(15),
                                                  width: getSize(15),
                                                  margin: getMargin(bottom: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 6, top: 1),
                                                  child: Text("Получатель",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold12))
                                            ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 21, top: 4),
                                                child: Text(
                                                    "Генадий Анатольевич",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 21, top: 1),
                                                child: Text(
                                                    "losik_3113@mail.ru",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12)),
                                            Padding(
                                                padding: getPadding(left: 21),
                                                child: Text("+7 953 995 97 93",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12)),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(top: 8),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .gray300,
                                                        indent:
                                                            getHorizontalSize(
                                                                21),
                                                        endIndent:
                                                            getHorizontalSize(
                                                                4)))),
                                            Padding(
                                                padding: getPadding(top: 9),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationBlueGray800,
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 1),
                                                      child: Text(
                                                          "Доставка в пункт выдачи",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12))
                                                ])),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    width:
                                                        getHorizontalSize(271),
                                                    margin: getMargin(
                                                        left: 21,
                                                        top: 3,
                                                        right: 16),
                                                    child: Text(
                                                        "Новосибирская обл., г. Бердск, ул, Ленина, д. 38, 63009",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratMedium12))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(top: 7),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .gray300,
                                                        indent:
                                                            getHorizontalSize(
                                                                21),
                                                        endIndent:
                                                            getHorizontalSize(
                                                                4)))),
                                            Padding(
                                                padding: getPadding(top: 20),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFrame7695,
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, top: 1),
                                                      child: Text(
                                                          "Сумма заказа",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12))
                                                ])),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 23,
                                                        top: 8,
                                                        right: 4),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Товары (1)",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratMedium12),
                                                          Text("1 450 ₽",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratMedium12)
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 23,
                                                        top: 6,
                                                        right: 4),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Доставка",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratMedium12),
                                                          Text("Бесплатно",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratMedium12)
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 23,
                                                        top: 10,
                                                        right: 4,
                                                        bottom: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("Итого",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratSemiBold12),
                                                          Text("1 450 ₽",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratSemiBold12)
                                                        ])))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 1, top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomButton(
                                                height: getVerticalSize(44),
                                                text: "Подтвердить",
                                                margin: getMargin(right: 7),
                                                variant:
                                                    ButtonVariant.FillGray50001,
                                                shape:
                                                    ButtonShape.RoundedBorder7,
                                                padding:
                                                    ButtonPadding.PaddingAll12,
                                                fontStyle: ButtonFontStyle
                                                    .MontserratRomanSemiBold15,
                                                onTap: () {
                                                  onTaptf(context);
                                                })),
                                        Expanded(
                                            child: CustomButton(
                                                height: getVerticalSize(44),
                                                text: "Отследить",
                                                margin: getMargin(left: 7),
                                                variant: ButtonVariant
                                                    .OutlineGray50001_2,
                                                shape:
                                                    ButtonShape.RoundedBorder7,
                                                padding:
                                                    ButtonPadding.PaddingAll12,
                                                fontStyle: ButtonFontStyle
                                                    .MontserratRomanSemiBold15Gray50001))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 18),
                                  child: Text("Помощь с заказом",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtH1)),
                              Container(
                                  width: getHorizontalSize(325),
                                  margin: getMargin(top: 10),
                                  child: Text(
                                      "Вашь заказ отправлен. Если вы не получили заказ — вы можете обратиться в поддержку и запросить возврат денежных средств через 78 дней",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratMedium15Bluegray800)),
                              Padding(
                                  padding: getPadding(top: 12, right: 2),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Написать в поддержку",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold15Bluegray800),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgVector87Gray50001,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(5),
                                            margin:
                                                getMargin(top: 2, bottom: 5))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Text("Вам может понравиться",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtH1)),
                              Padding(
                                  padding: getPadding(top: 12, right: 1),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: MediaQuery.of(context).size.height/3.5,
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(11),
                                              crossAxisSpacing:
                                                  getHorizontalSize(11)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return ShopItemWidget();
                                      }))
                            ]))))));
  }

  onTaptf(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ConfirmationOrderDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft46(BuildContext context) {
    Navigator.pop(context);
  }
}
