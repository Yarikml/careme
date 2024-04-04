import '../goods_basket_screen/goods_basket_screen.dart';
import '../goods_favorites_screen/goods_favorites_screen.dart';
import '../goods_orders_expected_screen/widgets/listfive_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';

bool _wait=true;
bool _finish=false;
bool _undo= false;

class GoodsOrdersExpectedScreen extends StatefulWidget {
  @override
  State<GoodsOrdersExpectedScreen> createState() => _GoodsOrdersExpectedScreenState();
}

class _GoodsOrdersExpectedScreenState extends State<GoodsOrdersExpectedScreen> {
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
                    margin: getMargin(left: 32, top: 12, bottom: 8),
                    onTap: () {
                      onTapArrowleft43(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Заказы"),
                actions: [
                  AppbarImage(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GoodsFavoritesScreen()));
                      },
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgFavorite,
                      margin: getMargin(left: 32, top: 8, right: 8,bottom: 8)),
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
                      margin: getMargin(left: 8, top: 8, right: 28,bottom: 8))
                ],
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 16, right: 16, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  _finish=false;
                                  _undo=false;
                                  _wait=true;
                                  setState(() {

                                  });
                                },
                                child:Container(
                                width: getHorizontalSize(109),
                                padding: getPadding(
                                    left: 9, top: 10, right: 9, bottom: 10),
                                decoration: _wait ? AppDecoration.txtFillBlue30001
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCustomBorderTL10) : BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                        ColorConstant.gray50002,
                                        width: 1),),),
                                child: Text("Ожидается",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: _wait? AppStyle.txtMontserratSemiBold15 : TextStyle(
                                      color: ColorConstant.gray50001,
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )))),
                            GestureDetector(
                                onTap: (){
                                  _finish=true;
                                  _undo=false;
                                  _wait=false; setState(() {

                                  });
                                },
                                child:Container(
                                width: getHorizontalSize(109),
                                padding: getPadding(
                                    left: 9, top: 10, right: 9, bottom: 10),
                               // decoration:  AppDecoration.outlineGray50001,
                                decoration:  _finish ? AppDecoration.txtFillBlue30001
                                    .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .txtCustomBorderTL10) : BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                        ColorConstant.gray50002,
                                        width: 1),),),
                                child: Text("Завершено",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: _finish? AppStyle.txtMontserratSemiBold15 : TextStyle(
                                      color: ColorConstant.gray50001,
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )))), GestureDetector(
                                onTap: (){
                                  _finish=false;
                                _undo=true;
                                _wait=false; setState(() {

                                  });
                                },

                                child:Container( decoration: _undo ? AppDecoration.txtFillBlue30001
                                    .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .txtCustomBorderTL10) : BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                        ColorConstant.gray50002,
                                        width: 1),),),
                                width: getHorizontalSize(109),
                                padding: getPadding(
                                    left: 9, top: 10, right: 9, bottom: 10),

                                child: Text("Отменено",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: _undo? AppStyle.txtMontserratSemiBold15 : TextStyle(
                                      color: ColorConstant.gray50001,
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    )))),

                          ]),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 25),
                              child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(5));
                                  },
                                  itemCount:6,
                                  itemBuilder: (context, index) {
                                    return ListfiveItemWidget();
                                  })))
                    ]))));
  }

  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goodsOrdersCompletedScreen);
  }

  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goodsOrdersCanceledScreen);
  }

  onTapArrowleft43(BuildContext context) {
    Navigator.pop(context);
  }
}
