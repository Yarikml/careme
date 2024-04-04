import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ConfirmationOrderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(330),
        padding: getPadding(all: 3),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: getPadding(left: 12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(217),
                                      child: Text(
                                          "Хотите подтвердить получение заказа?",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold20Black900)),
                                  Container(
                                      width: getHorizontalSize(198),
                                      child: Text(
                                          "Это означает что вы, получили все товары из заказа в целости.",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular12Black900))
                                ])),
                        CustomImageView(
                            svgPath: ImageConstant.imgCloseGray50001,
                            height: getSize(32),
                            width: getSize(32),
                            margin: getMargin(bottom: 67),
                            onTap: () {
                              onTapImgClose(context);
                            })
                      ])),
              Container(
                  width: getHorizontalSize(278),
                  margin: getMargin(left: 12, top: 16, right: 33),
                  child: Text(
                      "Если что-то не так, после подтверждения вы можете написать в поддержку — что бы вернуть деньги и товары",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular12Black900)),
              CustomButton(
                  text: "Подтвердить",
                  margin: getMargin(left: 12, top: 27, right: 13, bottom: 15),
                  variant: ButtonVariant.OutlineIndigo20049_1,
                  padding: ButtonPadding.PaddingAll12,
                  fontStyle: ButtonFontStyle.MontserratRomanSemiBold15Gray50,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.confirmationOrderFinishScreen);
                  },
                  alignment: Alignment.center)
            ]));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.qualityControlDefoultScreen);
  }
}
