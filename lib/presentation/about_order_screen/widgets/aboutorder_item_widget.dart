import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutorderItemWidget extends StatelessWidget {
  AboutorderItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9003f3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame7212127x159,
            height: getVerticalSize(
              127,
            ),
            width: getHorizontalSize(
              159,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 6,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratRegular12,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 4,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular12,
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
                    top: 1,
                    bottom: 2,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRegular12Gray50001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 11,
              bottom: 3,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold14,
            ),
          ),
        ],
      ),
    );
  }
}
