import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
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
                      onTapArrowleft52(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Оплата"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 178, right: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgUserBlue600,
                          height: getSize(75),
                          width: getSize(75)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("Оплата прошла успешно!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold20Blue600)),
                      CustomButton(
                          text: "Вернуться в магазин",
                          margin: getMargin(top: 41, bottom: 5),
                          variant: ButtonVariant.OutlineIndigo20049_1,
                          fontStyle: ButtonFontStyle.MontserratRomanSemiBold18,
                          onTap: () {
                            onTaptf(context);
                          })
                    ]))));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapArrowleft52(BuildContext context) {
    Navigator.pop(context);
  }
}
