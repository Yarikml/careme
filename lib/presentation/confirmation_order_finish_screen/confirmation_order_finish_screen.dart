import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ConfirmationOrderFinishScreen extends StatelessWidget {
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
                      onTapArrowleft55(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Подтверждение зак..."),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 159, right: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCheckmarkWhiteA700),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Заказ подтвержден",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold18)),
                      Container(
                          width: getHorizontalSize(239),
                          margin: getMargin(left: 45, top: 10, right: 44),
                          child: Text("Не могли бы вы оставить отзыв о заказе",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtMontserratMedium18Bluegray800)),
                      CustomButton(
                        onTap: (){Navigator.pushNamed(context, AppRoutes.qualityControlDefoultScreen);},
                          text: "Оставить отзыв",
                          margin: getMargin(top: 46),
                          variant: ButtonVariant.OutlineIndigo20049_1,
                          fontStyle: ButtonFontStyle.MontserratRomanSemiBold18),
                      Padding(
                          padding: getPadding(top: 14, bottom: 5),
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
                                  text: "Вернуться в магазин",
                                  //margin: getMargin(top: 5, bottom: 5),
                                  variant: ButtonVariant.Outline_1)))
                    ]))));
  }

  onTapArrowleft55(BuildContext context) {
    Navigator.pop(context);
  }
}
