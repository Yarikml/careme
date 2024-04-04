import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PrehistoricPhenomenonHeatScreen extends StatelessWidget {
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
                      onTapArrowleft63(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Природные явления"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 22, right: 23, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(239),
                          margin: getMargin(left: 1, right: 88),
                          child: Text("Рекомендации по охране здоровья",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtMontserratRomanSemiBold18Bluegray800)),
                      Container(
                          margin: getMargin(left: 1, top: 15),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 54,
                                    width: 54,
                                    margin: getMargin(top: 2, bottom: 24),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame2)),
                                Container(
                                    width: getHorizontalSize(185),
                                    margin: getMargin(left: 14, top: 3),
                                    child: Text(
                                        "В жаркие дни носить легкую, свободную одежду из натуральных тканей свободного кроя",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanMedium15))
                              ])),
                      Container(
                          margin: getMargin(left: 1, top: 12),
                          padding: getPadding(
                              left: 16, top: 19, right: 16, bottom: 19),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomIconButton(
                                height: 54,
                                width: 54,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgFrame3)),
                            Container(
                                width: getHorizontalSize(191),
                                margin: getMargin(left: 13, top: 10, bottom: 6),
                                child: Text("Надевать легкие головные уборы",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanMedium14))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 12),
                          padding: getPadding(
                              left: 16, top: 19, right: 16, bottom: 19),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomIconButton(
                                height: 54,
                                width: 54,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCart)),
                            Expanded(
                                child: Container(
                                    width: getHorizontalSize(208),
                                    margin:
                                        getMargin(left: 14, top: 9, bottom: 6),
                                    child: Text(
                                        "Необходимо больше пить – не менее 1,5 – 3 литров в день",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanMedium14)))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 12, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomIconButton(
                                height: 54,
                                width: 54,
                                margin: getMargin(top: 1, bottom: 1),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgUserWhiteA700)),
                            Container(
                                width: getHorizontalSize(159),
                                margin: getMargin(left: 14, top: 4),
                                child: Text(
                                    "По возможности чаще принимайте водные процедуры",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanMedium14))
                          ]))
                    ]))));
  }

  onTapArrowleft63(BuildContext context) {
    Navigator.pop(context);
  }
}
