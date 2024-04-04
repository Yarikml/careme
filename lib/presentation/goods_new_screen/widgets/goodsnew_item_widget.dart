import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../goods_more_one_screen/goods_more_one_screen.dart';

// ignore: must_be_immutable
class GoodsnewItemWidget extends StatefulWidget {
  GoodsnewItemWidget();

  @override
  State<GoodsnewItemWidget> createState() => _GoodsnewItemWidgetState();
}

class _GoodsnewItemWidgetState extends State<GoodsnewItemWidget> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => GoodsMoreOneScreen()));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            //side:  BorderSide(color: Colors.green,width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame7212,
              height: getVerticalSize(
                144,
              ),
              width: getHorizontalSize(
                148,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 12,
                right: 12,
                bottom: 9,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      144,
                    ),
                    child: Text(
                      "Название товара",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "4.7",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular12,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgStarGold,
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
                            "23 купили",
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
                      top: 8,
                    ),
                    child: Text(
                      "143124" + ' ₽',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14,
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      33,
                    ),
                    width: getHorizontalSize(
                      100,
                    ),
                    text: "В корзину",
                    margin: getMargin(
                      top: 6,
                    ),
                    variant: _isActive
                        ? ButtonVariant.OutlineIndigo20049_1
                        : ButtonVariant.FillGray50001,
                    shape: ButtonShape.RoundedBorder7,
                    padding: ButtonPadding.PaddingAll9,
                    fontStyle: ButtonFontStyle.MontserratSemiBold12,
                    alignment: Alignment.centerRight,
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
