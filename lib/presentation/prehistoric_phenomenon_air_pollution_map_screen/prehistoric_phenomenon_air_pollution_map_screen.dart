import '../prehistoric_phenomenon_air_pollution_map_screen/widgets/listid_item_widget.dart';
import '../prehistoric_phenomenon_air_pollution_map_screen/widgets/listnumber_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrehistoricPhenomenonAirPollutionMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(bottom: 49),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(816),
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  760),
                                                          width:
                                                              double.maxFinite,
                                                          margin:
                                                              getMargin(top: 8),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage14,
                                                                    height:
                                                                        getVerticalSize(
                                                                            760),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            375),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Container(
                                                                        width: getSize(
                                                                            33),
                                                                        margin: getMargin(
                                                                            top:
                                                                                248,
                                                                            right:
                                                                                62),
                                                                        padding: getPadding(
                                                                            all:
                                                                                8),
                                                                        decoration: AppDecoration.txtFillWhiteA700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtRoundedBorder16),
                                                                        child: Text(
                                                                            "вы",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium12Blue600)))
                                                              ]))),
                                                  CustomAppBar(
                                                      height:
                                                          getVerticalSize(48),
                                                      leadingWidth: 43,
                                                      leading: AppbarImage(
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          margin: getMargin(
                                                              left: 32,
                                                              top: 12,
                                                              bottom: 20),
                                                          onTap: () {
                                                            onTapArrowleft59(
                                                                context);
                                                          }),
                                                      centerTitle: true,
                                                      title: AppbarTitle(
                                                          text:
                                                              "Карта загрязнения"),
                                                      styleType: Style
                                                          .bgFillBlue60001),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child:
                                                          SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              padding:
                                                                  getPadding(
                                                                      top: 52,
                                                                      bottom:
                                                                          715),
                                                              child: IntrinsicWidth(
                                                                  child: Container(
                                                                      width: double.maxFinite,
                                                                      padding: getPadding(top: 9, bottom: 9),
                                                                      decoration: AppDecoration.fillWhiteA700,
                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                        Container(
                                                                            width: getHorizontalSize(
                                                                                125),
                                                                            padding: getPadding(
                                                                                left: 18,
                                                                                top: 4,
                                                                                right: 18,
                                                                                bottom: 4),
                                                                            decoration: AppDecoration.txtFillLightgreen500.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder7),
                                                                            child: Text("Нормально", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15Green900)),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(95),
                                                                            margin: getMargin(left: 8),
                                                                            padding: getPadding(left: 18, top: 4, right: 18, bottom: 4),
                                                                            decoration: AppDecoration.txtFillYellowA40001.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder7),
                                                                            child: Text("Средне", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15Orange700)),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(84),
                                                                            margin: getMargin(left: 8),
                                                                            padding: getPadding(left: 18, top: 5, right: 18, bottom: 5),
                                                                            decoration: AppDecoration.txtGradientAmberA700Orange300.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder7),
                                                                            child: Text("Плохо", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15Red800)),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(96),
                                                                            margin: getMargin(left: 8),
                                                                            padding: getPadding(left: 18, top: 4, right: 18, bottom: 4),
                                                                            decoration: AppDecoration.txtGradientPink500Deeporange400.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder7),
                                                                            child: Text("Вредно", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15))
                                                                      ]))))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 7,
                                                              right: 7),
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 10,
                                                              right: 13,
                                                              bottom: 10),
                                                          decoration: AppDecoration
                                                              .outlineGray3008,
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
                                                                        getHorizontalSize(
                                                                            232),
                                                                    margin: getMargin(
                                                                        left: 1,
                                                                        top: 9),
                                                                    child: Text(
                                                                        "Города с самым грязным воздухом",
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratRomanSemiBold18Bluegray800)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        right:
                                                                            3),
                                                                    padding: getPadding(
                                                                        left: 9,
                                                                        top: 14,
                                                                        right:
                                                                            9,
                                                                        bottom:
                                                                            14),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .dividers,
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: Text("#", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12)),
                                                                          Padding(
                                                                              padding: getPadding(left: 43, top: 1),
                                                                              child: Text("Cтрана", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12)),
                                                                          Spacer(),
                                                                          Padding(
                                                                              padding: getPadding(top: 1, right: 3),
                                                                              child: Text("2022 г. страны us AQI", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            6),
                                                                    child: ListView.separated(
                                                                        physics: NeverScrollableScrollPhysics(),
                                                                        shrinkWrap: true,
                                                                        separatorBuilder: (context, index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(1));
                                                                        },
                                                                        itemCount: 2,
                                                                        itemBuilder: (context, index) {
                                                                          return ListidItemWidget();
                                                                        }))
                                                              ])))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 7, top: 12, right: 7),
                                            padding: getPadding(
                                                left: 13,
                                                top: 10,
                                                right: 13,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.outlineGray3008,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          221),
                                                      margin: getMargin(
                                                          left: 1, top: 9),
                                                      child: Text(
                                                          "Города с самым чистым воздухом",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRomanSemiBold18Bluegray800)),
                                                  Container(
                                                      margin: getMargin(
                                                          top: 10, right: 3),
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 14,
                                                          right: 9,
                                                          bottom: 14),
                                                      decoration: AppDecoration
                                                          .dividers,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "#",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            43,
                                                                        top: 1),
                                                                child: Text(
                                                                    "Cтрана",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold12)),
                                                            Spacer(),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            3),
                                                                child: Text(
                                                                    "2022 г. страны us AQI",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratSemiBold12))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 6),
                                                      child: ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        1));
                                                          },
                                                          itemCount: 2,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return ListnumberItemWidget();
                                                          }))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapArrowleft59(BuildContext context) {
    Navigator.pop(context);
  }
}
