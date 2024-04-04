import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GoodsfavoritesItemWidget extends StatelessWidget {
  GoodsfavoritesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        //side:  BorderSide(color: Colors.green,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      clipBehavior: Clip.antiAlias,
      //width: double.maxFinite,
      child: Container(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                left: 4,
                top: 12,
                right: 4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame7636,
                    height: getVerticalSize(
                      112,
                    ),
                    width: getHorizontalSize(
                      114,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        10,
                      ),
                    ),
                    margin: getMargin(
                      bottom: 4,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            179,
                          ),
                          child: Text(
                            "Название товара",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular13Bluegray800,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "4.7",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratRegular14,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgStarGold,
                                height: getVerticalSize(
                                  11,
                                ),
                                width: getHorizontalSize(
                                  12,
                                ),
                                margin: getMargin(
                                  left: 5,
                                  top: 1,
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                ),
                                child: Text(
                                  "2020 купили",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRegular14Gray50001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "123123",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratMedium12Gray50001
                                              .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          width: getHorizontalSize(
                                            7,
                                          ),
                                          margin: getMargin(
                                            left: 6,
                                            top: 7,
                                            bottom: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.blue600,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                          ),
                                          child: Text(
                                            "123",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold12Blue600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "234234"+ "P",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratSemiBold20,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup7508,
                                height: getSize(
                                  26,
                                ),
                                width: getSize(
                                  26,
                                ),
                                margin: getMargin(
                                  left: 80,
                                  top: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 10,
              ),
              padding: getPadding(
                left: 10,
                top: 9,
                right: 10,
                bottom: 9,
              ),
              decoration: AppDecoration.dividers,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgTrashGray50001,
                    height: getVerticalSize(
                      18,
                    ),
                    width: getHorizontalSize(
                      16,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 9,
                      bottom: 7,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 10,
                      bottom: 5,
                    ),
                    child: Text(
                      "Удалить",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular14Gray50001,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: getMargin(
                      top: 1,
                    ),
                    padding: getPadding(
                      left: 22,
                      top: 9,
                      right: 22,
                      bottom: 9,
                    ),
                    decoration:
                        AppDecoration.gradientBlue60001IndigoA400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            66,
                          ),

                          child: Text(
                            "В корзину",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold12WhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
