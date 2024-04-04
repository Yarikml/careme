import 'package:careme24/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShopItemWidget extends StatelessWidget {
  ShopItemWidget();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){Navigator.pushNamed(context, AppRoutes.goodsMoreOneScreen);},
        child:Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          //side:  BorderSide(color: Colors.green,width: 3),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),

      /*decoration: AppDecoration.outlineBlack9003f3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),*/
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame7212127x159,

          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 6,
            ),
            child: Text(
              "чехлы чехлычехлы чехлы  ",
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
                    "33",
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
                    "123 купили",
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
              top: 5,
              bottom: 3,
            ),
            child: Text(
              "222"+" P",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold14,
            ),
          ),
        ],
      ),
    ));
  }
}
