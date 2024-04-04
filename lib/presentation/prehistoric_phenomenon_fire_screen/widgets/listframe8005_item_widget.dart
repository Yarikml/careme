import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listframe8005ItemWidget extends StatelessWidget {
  Listframe8005ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 26,
        ),
        padding: getPadding(
          left: 9,
          top: 7,
          right: 9,
          bottom: 7,
        ),
        decoration: AppDecoration.outlineGray500013.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgFrame8001Blue400,
              height: getSize(
                16,
              ),
              width: getSize(
                16,
              ),
              margin: getMargin(
                left: 5,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 9,
                top: 1,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratRegular12Gray50001,
              ),
            ),
            Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratMedium12,
            ),
          ],
        ),
      ),
    );
  }
}
