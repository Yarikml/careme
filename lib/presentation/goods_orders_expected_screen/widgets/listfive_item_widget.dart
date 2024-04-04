import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListfiveItemWidget extends StatelessWidget {
  ListfiveItemWidget();

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){Navigator.pushNamed(context, AppRoutes.aboutOrderScreen);},
        child:Card(
        /*
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),*/
      shape: RoundedRectangleBorder(
        //side:  BorderSide(color: Colors.green,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      clipBehavior: Clip.antiAlias,
        child: Container (
            padding: getPadding(
              top: 12,
              bottom: 12,

            ),child:Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  right: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Заказ от 5 февраля 2023",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratSemiBold13,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "Актикул 203402349023",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium13Blue600,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVector87Gray50001,
                      height: getVerticalSize(
                        11,
                      ),
                      width: getHorizontalSize(
                        5,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray300,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 16,
                right: 21,
                bottom: 4,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame7636,
                    height: getVerticalSize(
                      90,
                    ),
                    width: getHorizontalSize(
                      92,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        10,
                      ),
                    ),
                    margin: getMargin(
                      bottom: 1,
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
                            194,
                          ),
                          child: Text(
                            "Название товара",
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "Адрес",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium13Gray50001,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                          ),
                          child: Text(
                            "Доставка к 20 июля",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ))
    ;
  }
}
