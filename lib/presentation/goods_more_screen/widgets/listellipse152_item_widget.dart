import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse152ItemWidget extends StatelessWidget {
  Listellipse152ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        child: Container(
          padding: getPadding(
            left: 13,
            top: 8,
            right: 13,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBlack90054.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse152,
                      height: getSize(
                        37,
                      ),
                      width: getSize(
                        37,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 124,
                                ),
                                child: Text(
                                  "",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular15,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVector12x12,
                                height: getSize(
                                  11,
                                ),
                                width: getSize(
                                  11,
                                ),
                                margin: getMargin(
                                  left: 1,
                                  top: 3,
                                  bottom: 3,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtMontserratMedium12Gray50001,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  303,
                ),
                margin: getMargin(
                  top: 91,
                  right: 1,
                ),
                child: Text(
                  "",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratRegular10Bluegray800,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                  right: 1,
                ),
                child: Text(
                  "22.04.2022",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium10Gray300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
