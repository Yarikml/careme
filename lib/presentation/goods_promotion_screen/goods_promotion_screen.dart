import '../goods_promotion_screen/widgets/goodspromotion_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class GoodsPromotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          ImageConstant
                              .imgPinkFon),
                      fit: BoxFit.cover),
                ),

                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(

                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(


                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomAppBar(
                                                      height:
                                                          getVerticalSize(48),
                                                      leadingWidth: 43,
                                                      leading: AppbarImage(
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          margin: getMargin(
                                                              left: 32,
                                                              top: 12,
                                                              bottom: 20),
                                                          onTap: () {
                                                            onTapArrowleft27(
                                                                context);
                                                          }),
                                                      centerTitle: true,
                                                      title: AppbarTitle(
                                                          text: "Акции"),
                                                      actions: [
                                                        AppbarImage(
                                                            onTap:
                                                                (){ Navigator.pushNamed(context, AppRoutes.goodsFavoritesScreen);},
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            margin: getMargin(
                                                                left: 24,
                                                                top: 10,
                                                                right: 10)),
                                                        AppbarImage(
                                                            onTap:
                                                                (){ Navigator.pushNamed(context, AppRoutes.goodsBasketScreen);},
                                                            height: getSize(26),
                                                            width: getSize(26),
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup7508,
                                                            margin: getMargin(
                                                                left: 16,
                                                                top: 10,
                                                                right: 34,
                                                                bottom: 2))
                                                      ],
                                                      styleType:
                                                          Style.bgFillPinkA200)
                                                ])))
                                  ]))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 23, right: 23),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(248),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(11),
                                          crossAxisSpacing:
                                              getHorizontalSize(11)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return GoodspromotionItemWidget();
                                  })))
                    ]))));
  }

  onTapArrowleft27(BuildContext context) {
    Navigator.pop(context);
  }
}
