import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListnumberItemWidget extends StatelessWidget {
  ListnumberItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 9,
        top: 10,
        right: 9,
        bottom: 10,
      ),
      decoration: AppDecoration.dividers,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 4,
              bottom: 5,
            ),
            child: Text(
              "1",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold12Black900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage261,
            height: getVerticalSize(
              20,
            ),
            width: getHorizontalSize(
              32,
            ),
            margin: getMargin(
              left: 14,
              top: 2,
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 1,
              bottom: 4,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratMedium15Bluegray800,
            ),
          ),
          Spacer(),
          Container(
            width: getHorizontalSize(
              66,
            ),
            margin: getMargin(
              right: 3,
            ),
            padding: getPadding(
              left: 30,
              top: 2,
              right: 30,
              bottom: 2,
            ),
            decoration: AppDecoration.txtFillLightgreen500.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder7,
            ),
            child: Text(
              "1",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold15,
            ),
          ),
        ],
      ),
    );
  }
}
