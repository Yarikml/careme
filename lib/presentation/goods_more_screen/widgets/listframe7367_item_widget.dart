import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listframe7367ItemWidget extends StatelessWidget {
  Listframe7367ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgFrame7367,
          height: getVerticalSize(
            9,
          ),
          width: getHorizontalSize(
            42,
          ),
          margin: getMargin(
            top: 3,
            bottom: 3,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 5,
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
            left: 7,
            top: 5,
            bottom: 5,
          ),
          child: Container(
            height: getVerticalSize(
              5,
            ),
            width: getHorizontalSize(
              104,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  2,
                ),
              ),
              child: LinearProgressIndicator(
                value: 0.09,
                valueColor: AlwaysStoppedAnimation<Color>(
                  ColorConstant.blueGray800,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 7,
            top: 1,
            bottom: 1,
          ),
          child: Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtMontserratMedium10,
          ),
        ),
      ],
    );
  }
}
