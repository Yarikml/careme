import '../goods_basket_screen/goods_basket_screen.dart';
import '../goods_favorites_screen/widgets/goodsfavorites_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../goods_orders_expected_screen/goods_orders_expected_screen.dart';

class GoodsFavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(11),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 32, top: 12, bottom: 20),
                    onTap: () {
                      onTapArrowleft42(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Нравится"),
                actions: [
                  AppbarImage(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GoodsBasketScreen()));
                      },
                      height: getSize(26),
                      width: getSize(26),
                      imagePath: ImageConstant.imgGroup7508,
                      margin:
                          getMargin(left: 23, top: 8, right: 12, bottom: 2)),
                  AppbarImage(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GoodsOrdersExpectedScreen()));
                      },
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgFrame7563,
                      margin: getMargin(left: 16, top: 8, right: 35))
                ],
                styleType: Style.bgFillBlue60001),
            body: Padding(
                padding: getPadding(left: 16, top: 16, right: 16),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(10));
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GoodsfavoritesItemWidget();
                    }))));
  }

  onTapArrowleft42(BuildContext context) {
    Navigator.pop(context);
  }
}
