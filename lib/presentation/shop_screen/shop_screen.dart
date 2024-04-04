import '../../widgets/custom_bottom_bar.dart';
import '../shop_screen/widgets/shop_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

TextEditingController _serchController= TextEditingController();

class ShopScreen extends StatefulWidget {

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {


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
                      onTapArrowleft38(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Товары"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(50),
                          width: MediaQuery.of(context).size.width-45,
                          margin: getMargin(top: 21),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(top: 0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              margin:
                                                  getMargin(top: 2,),
                                              padding: getPadding(left: 8, right: 4, bottom: 4),
                                              decoration: AppDecoration
                                                  .outlineBlack9003f3
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [

                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgSearch,
                                                    height: getVerticalSize(20),
                                                    width:
                                                        getHorizontalSize(22)),
                                                Container(
                                                  width: MediaQuery.of(context).size.width/3,

                                                    padding: getPadding(
                                                        left: 2,

                                                       ),
                                                    child: TextField(
                                                        //maxLines: null,
                                                        //expands: true,
                                                        style: TextStyle(fontSize: 14.0, height: 1.0, color: Colors.black),
                                                        controller: _serchController,
                                                        textAlign: TextAlign.center,decoration: InputDecoration(
                                                      focusedBorder: InputBorder.none,
                                                      hintText: "Что вы ищите?",
                                                      enabledBorder: InputBorder.none,

                                                    )))
                                              ])),
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnframe7685(context);
                                              },
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFrame7685,
                                                        height: getSize(26),
                                                        width: getSize(26)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text("Нравится",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRegular9))
                                                  ])),
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnmaskgroup(context);
                                              },
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.shopping_cart, color: Colors.grey,size: 25,),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text("Корзина",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRegular9))
                                                  ])),
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnframe7686(context);
                                              },
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFrame7686,
                                                        height: getSize(26),
                                                        width: getSize(26)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Text("Заказы",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratRegular9))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: getHorizontalSize(25),
                                    margin: getMargin(right: 47),
                                    padding: getPadding(
                                        left: 6, top: 1, right: 6, bottom: 1),
                                    decoration: AppDecoration.txtFillBlue600
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder7),
                                    child: Text("23",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRegular10WhiteA700)))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 21, top: 13),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Padding(
                                        padding: getPadding(bottom: 14),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 15,
                                                          top: 8,
                                                          right: 15,
                                                          bottom: 8),
                                                      decoration: AppDecoration
                                                          .gradientGreenA700GreenA70001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: GestureDetector(
                                                          onTap:()
                                                          { Navigator.pushNamed(context, AppRoutes.goodsNewScreen);},
                                                          child:Stack(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrameWhiteA70034x35,
                                                            height:
                                                                getVerticalSize(
                                                                    34),
                                                            width:
                                                                getHorizontalSize(
                                                                    35),
                                                            alignment: Alignment
                                                                .center)
                                                      ])))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("Новинки",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 13),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                            GestureDetector (
                                                onTap:(){ Navigator.pushNamed(context, AppRoutes.goodsPromotionScreen);},

                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 9,
                                                          right: 17,
                                                          bottom: 9),
                                                      decoration: AppDecoration
                                                          .gradientRedA200Pink600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgMaskgroup,
                                                            height: getSize(32),
                                                            width: getSize(32),
                                                            alignment: Alignment
                                                                .center)
                                                      ])))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("Акции",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 12),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 12,
                                                          right: 19,
                                                          bottom: 12),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMaskgroup28x28,
                                                            height: getSize(28),
                                                            width: getSize(28),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Text("медикоменты",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Bluegray800))
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 13),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgStorecatalog,
                                                  height: getVerticalSize(52),
                                                  width: getHorizontalSize(67),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(10))),
                                              Container(
                                                  width: getHorizontalSize(51),
                                                  margin: getMargin(
                                                      left: 6, top: 5),
                                                  child: Text(
                                                      "Витамины \nи БАД",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Bluegray800))
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 13),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 9,
                                                          right: 18,
                                                          bottom: 9),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTrashWhiteA700,
                                                            height:
                                                                getVerticalSize(
                                                                    32),
                                                            width:
                                                                getHorizontalSize(
                                                                    30),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Container(
                                                  width: getHorizontalSize(74),
                                                  margin: getMargin(top: 5),
                                                  child: Text(
                                                      "Медицинские \nтовары",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 14),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 10,
                                                          right: 18,
                                                          bottom: 10),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMaskgroup30x30,
                                                            height: getSize(30),
                                                            width: getSize(30),
                                                            alignment: Alignment
                                                                .bottomCenter)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("Антибиотики",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratRegular10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 1),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 6, right: 6),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMaskgroup49x53,
                                                            height:
                                                                getVerticalSize(
                                                                    49),
                                                            width:
                                                                getHorizontalSize(
                                                                    53),
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ]))),
                                              Container(
                                                  width: getHorizontalSize(60),
                                                  margin: getMargin(top: 5),
                                                  child: Text(
                                                      "Товары для\nмам и детей",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratRegular10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 14),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 11,
                                                          top: 14,
                                                          right: 11,
                                                          bottom: 14),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLink,
                                                            height:
                                                                getVerticalSize(
                                                                    17),
                                                            width:
                                                                getHorizontalSize(
                                                                    43),
                                                            alignment: Alignment
                                                                .bottomCenter)
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("Оптика",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratRegular10Bluegray800))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 13, bottom: 1),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(52),
                                                      width:
                                                          getHorizontalSize(67),
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 11,
                                                          right: 18,
                                                          bottom: 11),
                                                      decoration: AppDecoration
                                                          .gradientAmberA700Amber400
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGroup,
                                                            height: getSize(29),
                                                            width: getSize(29),
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ]))),
                                              Container(
                                                  width: getHorizontalSize(55),
                                                  margin: getMargin(top: 5),
                                                  child: Text(
                                                      "Косметика \nи гигиена",
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtMontserratRegular10Bluegray800))
                                            ]))
                                  ])))),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 23, top: 12, right: 23),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: MediaQuery.of(context).size.height/3.5,
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(11),
                                          crossAxisSpacing:
                                              getHorizontalSize(11)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return ShopItemWidget();
                                  })))
                    ])),
        ));
  }

  onTapColumnframe7685(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goodsFavoritesScreen);
  }

  onTapColumnmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goodsBasketScreen);
  }

  onTapColumnframe7686(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goodsOrdersExpectedScreen);
  }

  onTapArrowleft38(BuildContext context) {
    Navigator.pop(context);
  }
}
