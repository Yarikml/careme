import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlotspoliceItemWidget extends StatelessWidget {
  PlotspoliceItemWidget();

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        decoration: AppDecoration.outlineBlack9003d.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 14,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.indigoA100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBR30,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        81,
                      ),
                      width: getHorizontalSize(
                        64,
                      ),
                      padding: getPadding(
                        left: 13,
                        top: 27,
                        right: 13,
                        bottom: 27,
                      ),
                      decoration: AppDecoration.fillIndigoA100.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBR30,
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgFrameWhiteA700,
                            height: getVerticalSize(
                              27,
                            ),
                            width: getHorizontalSize(
                              35,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: getPadding(
                        left: 11,
                        top: 10,
                        bottom: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              221,
                            ),
                            margin: getMargin(
                              right: 17,
                            ),
                            child: Text(
                              "",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold15Blue600,
                            ),
                          ),
                          Text(
                            "ул. Ильинка, 3/8, стр. 5, Москва, 109012",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium12Gray50001,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: getVerticalSize(
                1,
              ),
              thickness: getVerticalSize(
                1,
              ),
              color: ColorConstant.gray300,
            ),
            Padding(
              padding: getPadding(
                left: 14,
                top: 13,
              ),
              child: Row(
                children: [
                  Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium15Bluegray800,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 21,
                    ),
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratMedium15Bluegray800,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 21,
                    ),
                    child: Text(
                      "4.7",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratMedium15Bluegray800,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector12x12,
                    height: getSize(
                      12,
                    ),
                    width: getSize(
                      12,
                    ),
                    margin: getMargin(
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 14,
                  top: 17,
                  right: 12,
                  bottom: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                      text: "Оставить по умолчанию",
                      iconSize: getHorizontalSize(
                        10,
                      ),
                      value: "Оставить по умолчанию",
                      groupValue: radioGroup,
                      fontStyle: RadioFontStyle.MontserratMedium10,
                      onChange: (value) {
                        radioGroup = value;
                      },
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVector87,
                      height: getVerticalSize(
                        9,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
