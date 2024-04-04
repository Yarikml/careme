import '../prehistoric_phenomenon_fire_screen/widgets/listframe8005_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class PrehistoricPhenomenonFireScreen extends StatelessWidget {
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
                      onTapArrowleft95(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Природные явления"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 3, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(right: 7),
                          padding: getPadding(
                              left: 34, top: 14, right: 34, bottom: 14),
                          decoration: AppDecoration.white,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(bottom: 9),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder39),
                                    child: Container(
                                        height: getSize(83),
                                        width: getSize(83),
                                        padding: getPadding(all: 19),
                                        decoration: AppDecoration
                                            .gradientYellow500YellowA400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder39),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGroup24,
                                              height: getVerticalSize(42),
                                              width: getHorizontalSize(43),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 2, right: 58),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Пожар",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRomanSemiBold18Bluegray800),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Москва",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium15Blue600)),
                                          CustomButton(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(139),
                                              text: "Аномально",
                                              margin: getMargin(top: 8),
                                              variant: ButtonVariant
                                                  .FillYellowA40002,
                                              padding:
                                                  ButtonPadding.PaddingAll9,
                                              fontStyle: ButtonFontStyle
                                                  .MontserratRomanMedium18Lime900)
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 10, top: 18, right: 10),
                          padding: getPadding(
                              left: 12, top: 8, right: 12, bottom: 8),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 2, top: 2),
                                    child: Text("Прогноз",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtH1)),
                                Container(
                                    margin: getMargin(left: 2),
                                    padding: getPadding(top: 18, bottom: 18),
                                    decoration: AppDecoration.outlineGray3004,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("16:00",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12Gray50001),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "+",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "25.7",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "°",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ]),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("17:00",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12Gray50001),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "+",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "2",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "4",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: ".",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "6",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "°",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ]),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("18:00",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12Gray50001),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "+",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "2",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "3",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: ".7",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "°",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ]),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("19:00",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12Gray50001),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "+",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "2",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "2",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: ".7",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          TextSpan(
                                                              text: "°",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray800,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ]),
                                          Padding(
                                              padding: getPadding(right: 1),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("20:00",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratMedium12Gray50001),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "+",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray800,
                                                                          fontSize: getFontSize(
                                                                              15),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text: "2",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray800,
                                                                          fontSize: getFontSize(
                                                                              15),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text: "1",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray800,
                                                                          fontSize: getFontSize(
                                                                              15),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text:
                                                                          ".7",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray800,
                                                                          fontSize: getFontSize(
                                                                              15),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  TextSpan(
                                                                      text: "°",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray800,
                                                                          fontSize: getFontSize(
                                                                              15),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w600))
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 2, top: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Скорость ветра м/c",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium12),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "максимум сегодня ",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray800,
                                                        fontSize:
                                                            getFontSize(12),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                TextSpan(
                                                    text: "0.99 м/c ",
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .blueGray800,
                                                        fontSize:
                                                            getFontSize(12),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ]),
                                              textAlign: TextAlign.left)
                                        ])),
                                Container(
                                    height: getVerticalSize(76),
                                    child: ListView.separated(
                                        padding: getPadding(left: 2, top: 14),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(26));
                                        },
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return Listframe8005ItemWidget();
                                        }))
                              ])),
                      Container(
                          margin: getMargin(
                              left: 23, top: 14, right: 23, bottom: 5),
                          padding: getPadding(
                              left: 12, top: 10, right: 12, bottom: 10),
                          decoration: AppDecoration.outlineBlack9003f3.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("02.01.2023",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtMontserratMedium12Black900),
                                Container(
                                    width: getHorizontalSize(236),
                                    margin: getMargin(top: 11, right: 68),
                                    child: Text(
                                        "В такую жаркую погоду высока вероятность пожаров. ",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Black900)),
                                Padding(
                                    padding: getPadding(top: 7, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Узнать больше в новостях",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium15Blue600),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVector87Blue600,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(5),
                                              margin:
                                                  getMargin(top: 4, bottom: 3))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 23, right: 23, bottom: 50),
                child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(1),
                        top: getVerticalSize(1),
                        right: getHorizontalSize(1),
                        bottom: getVerticalSize(1)),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                        begin: Alignment(1.05, 0.11),
                        end: Alignment(-0.02, 0.83),
                        colors: [
                          ColorConstant.blue60001,
                          ColorConstant.indigoA400
                        ]),
                    corners: Corners(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: CustomButton(
                        height: getVerticalSize(56),
                        text: "Рекомендации",
                        margin: getMargin(left: 23, right: 23, bottom: 50))))));
  }

  onTapArrowleft95(BuildContext context) {
    Navigator.pop(context);
  }
}
