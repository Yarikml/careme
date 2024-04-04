import '../../custom_widget_my/weather_at_hour.dart';
import '../../custom_widget_my/weather_at_day.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../prehistoric_phenomenon_heat_screen/prehistoric_phenomenon_heat_screen.dart';

class PrehistoricPhenomenonHeatOneScreen extends StatelessWidget {
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
                      onTapArrowleft64(context);
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
                          padding: getPadding(top: 14, bottom: 14),
                          decoration: AppDecoration.white,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                        padding: getPadding(
                                            left: 22,
                                            top: 18,
                                            right: 22,
                                            bottom: 18),
                                        decoration: AppDecoration
                                            .gradientYellow500YellowA400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder39),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMusicLime900,
                                              height: getVerticalSize(46),
                                              width: getHorizontalSize(33),
                                              alignment: Alignment.centerRight)
                                        ]))),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Высокая температура",
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
                                                  .FillYellowA40001,
                                              padding:
                                                  ButtonPadding.PaddingAll9,
                                              fontStyle: ButtonFontStyle
                                                  .MontserratRomanMedium18Lime900)
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 21, top: 18, right: 25),
                          padding: getPadding(
                              left: 12, top: 19, right: 12, bottom: 19),
                          decoration: AppDecoration.outlineBlack9003f3.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Градусы",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium15Bluegray800),
                                          Text("Москва",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold18)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 4, right: 18),
                                    child: Text("+25,7°",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold32))
                              ])),
                      Container(
                          margin:
                              getMargin(left: 9, top: 14, right: 10, bottom: 5),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: Text("Прогноз",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtH1)),
                                Container(
                                    margin: getMargin(left: 1),
                                    padding: getPadding(top: 18, bottom: 18),
                                    decoration: AppDecoration.outlineGray3004,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          WheatherAtHour(
                                            hours: "16:00",
                                            temperature: "+25.7",
                                          ),
                                          WheatherAtHour(
                                            hours: "17:00",
                                            temperature: "+24.6",
                                          ),
                                          WheatherAtHour(
                                            hours: "18:00",
                                            temperature: "+23.7",
                                          ),
                                          WheatherAtHour(
                                            hours: "19:00",
                                            temperature: "+22.7",
                                          ),
                                          WheatherAtHour(
                                            hours: "20:00",
                                            temperature: "+21.7",
                                          ),
                                        ])),
                                Container(
                                    height: getVerticalSize(75),
                                    child: ListView.separated(
                                        padding: getPadding(
                                            left: 1, top: 14, bottom: 7),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(20));
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return WheatherAtDay(
                                            day: "вт",
                                            minTemperature: "+25.7",
                                            maxTemperature: "+30.9",
                                            isToday: true,
                                          );
                                        }))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 22, right: 23, bottom: 50),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PrehistoricPhenomenonHeatScreen()));
                        },
                        height: getVerticalSize(56),
                        text: "Рекомендации",
                        margin: getMargin(left: 22, right: 23))))));
  }

  onTapArrowleft64(BuildContext context) {
    Navigator.pop(context);
  }
}
