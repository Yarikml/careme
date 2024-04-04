import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../goods_more_one_screen/goods_more_one_screen.dart';

// ignore: must_be_immutable

int _count = 1;
class GoodsbasketItemWidget extends StatefulWidget {
  GoodsbasketItemWidget();

  @override
  State<GoodsbasketItemWidget> createState() => _GoodsbasketItemWidgetState();
}
bool _isSelect = false;
bool _isFavorite = false;
class _GoodsbasketItemWidgetState extends State<GoodsbasketItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GoodsMoreOneScreen()));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              //side:  BorderSide(color: Colors.green,width: 3),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 14,
                    right: 13,
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
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 1,
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
                              child: Text(
                                "Адрес",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium12Blue600,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 14,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "13124",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium12Gray50001
                                        .copyWith(
                                      decoration: TextDecoration.lineThrough,
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
                                      "1212",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtMontserratSemiBold12Blue600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "143124"+'₽',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 14,
                  ),
                  padding: getPadding(
                    left: 12,
                    top: 2,
                    right: 12,
                    bottom: 2,
                  ),
                  decoration: AppDecoration.dividers,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        width: getHorizontalSize(
                          99,
                        ),
                        text: "Нравится",
                        margin: getMargin(
                          top: 8,
                          bottom: 5,
                        ),
                        shape: ButtonShape.Square,
                        padding: ButtonPadding.PaddingT1,
                        fontStyle: ButtonFontStyle.MontserratRegular14,
                        prefixWidget: Container(
                          margin: getMargin(
                            right: 7,
                          ),
                          child: GestureDetector(

                              onTap: (){_isFavorite=!_isFavorite;
                                setState(() {

                                });
                                },
                              child:Icon(Icons.favorite, color: _isFavorite ?Colors.red :Colors.grey,))/*CustomImageView(
                            svgPath: ImageConstant.imgFavoriteGray50001,
                          ),*/
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          90,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 3,
                        ),
                        padding: getPadding(
                          left: 6,
                          top: 6,
                          right: 6,
                          bottom: 6,
                        ),
                        decoration: AppDecoration.outlineGray3006.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 15,
                                bottom: 1,
                              ),
                              child: Text(
                               _count.toString(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtMontserratSemiBold15Bluegray800,
                              ),
                            ),
                       GestureDetector (
                           onTap: (){_count++;
                             setState(() {

                             });},
                           child:   CustomImageView(

                              svgPath: ImageConstant.imgPlus,
                              height: getSize(
                                10,
                              ),
                              width: getSize(
                                10,
                              ),
                              margin: getMargin(
                                left: 15,
                                top: 3,
                                bottom: 4,
                              ),
                            )),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: (){_isSelect=!_isSelect;
                            setState(() {

                            });
                            },
                          child:Container(
                        margin: getMargin(
                          top: 10,
                          right: 1,
                          bottom: 4,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.outlineBlue6001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(
                                14,
                              ),
                              width: getSize(
                                14,
                              ),
                              decoration: BoxDecoration(
                                color: _isSelect? ColorConstant.blue600: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
