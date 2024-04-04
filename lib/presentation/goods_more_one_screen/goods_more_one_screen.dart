import 'package:card_swiper/card_swiper.dart';
import 'package:careme24/presentation/shop_screen/widgets/shop_item_widget.dart';

import '../goods_basket_screen/goods_basket_screen.dart';
import '../goods_favorites_screen/goods_favorites_screen.dart';
import '../goods_more_one_screen/widgets/goodsmoreone_item_widget.dart';
import '../goods_more_one_screen/widgets/listellipse153_item_widget.dart';
import '../goods_more_one_screen/widgets/listfourhundred2_item_widget.dart';
import '../goods_more_one_screen/widgets/listframe7368_item_widget.dart';
import '../goods_more_one_screen/widgets/slider1_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GoodsMoreOneScreen extends StatefulWidget {
  @override
  State<GoodsMoreOneScreen> createState() => _GoodsMoreOneScreenState();
}

class _GoodsMoreOneScreenState extends State<GoodsMoreOneScreen> {
  int silderIndex = 1;
 int index=1;
  int valueColor = 0;
  int valueSize = 0;
  int quantity=1;
  bool _availability=true;
  bool _isFavorite=false;

  Widget CustomRadioButton( int index, Color C) {
    return valueColor == index ?Padding(padding: getPadding(right: 5),child:Stack(

      alignment: Alignment.center,
      children: [Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: C,
        ),
      ),GestureDetector(onTap:(){

        valueColor=index;
        setState(() {

        });

      },child:Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: (valueColor == index) ? Colors.blue :  Colors.blue,
            width: 2,
          ),
        ),
      ))],)):
    Padding(padding: getPadding(right: 5),child: GestureDetector(
        onTap: (){ valueColor=index;
        setState(() {

        });},
        child:Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: C,
      ),
    )))
    ;
  }

  Widget SizeButton( int index, String size, bool active) {
    return active ? Padding(padding: getPadding(right: 5),child:Stack(

      alignment: Alignment.center,
      children: [Text(size, style: AppStyle
          .txtMontserratSemiBold15Bluegray800),GestureDetector(onTap:(){

        valueSize=index;
        setState(() {

        });

      },child:Container(
        width: 45,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: (valueSize == index) ? Colors.blue :   ColorConstant.gray30002,
            width: 1,
          ),
        ),
      ))],)):
    Padding(padding: getPadding(right: 5),child:Stack(

      alignment: Alignment.center,
      children: [
        GestureDetector(onTap:(){ },
            child:Container(

        width: 45,
        height: 35,
        decoration: BoxDecoration(
          color: ColorConstant.gray30002,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: (valueSize == index) ? Colors.blue :   ColorConstant.gray30002,
            width: 1,
          ),
        ),
      )), Text(size, style: AppStyle
            .txtMontserratSemiBold15Bluegray800),],))

    ;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:   Container(

                  padding: getPadding(
                      left: 19,
                      top: 8,
                      right: 19,
                      bottom: 8),
                  decoration: AppDecoration
                      .gradientWhiteA700WhiteA700,
                  child: Column(
                      mainAxisSize:
                      MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                      children: [
                        Padding(
                            padding:
                            getPadding(
                                left: 1,
                                top: 3),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                                children: [
                                  Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(56),
                                          text: "В корзину",
                                          margin: getMargin(right: 1),
                                          variant:_availability? ButtonVariant.FillBluegray800: ButtonVariant.FillGray50001,
                                          fontStyle: ButtonFontStyle.MontserratRomanSemiBold16)),
                                  Expanded(
                                      child: GestureDetector(
                                          onTap:(){Navigator.pushNamed(context, AppRoutes.heckoutScreen);},
                                          child:Container(
                                              height: getVerticalSize(56),

                                          margin: getMargin(left: 1),
                                          padding: getPadding(left: 20, top: 9, right: 20, bottom: 9),
                                          decoration: AppDecoration.outlineIndigo200491.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                            Text("Купить сейчас", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRomanSemiBold16),
                                            RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(text: "1 450 ", style: TextStyle(color: ColorConstant.gray50Cc, fontSize: getFontSize(13), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                  TextSpan(text: "₽", style: TextStyle(color: ColorConstant.gray50Cc, fontSize: getFontSize(13), fontFamily: 'Montserrat', fontWeight: FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.left)
                                          ]))))
                                ])),
                        Padding(
                            padding:
                            getPadding(
                                top: 6),
                            child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Доставка",
                                          style: TextStyle(color: ColorConstant.blueGray800, fontSize: getFontSize(15), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(15), fontFamily: 'Montserrat', fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "15-18 февраля",
                                          style: TextStyle(color: ColorConstant.blue600, fontSize: getFontSize(15), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),

                                    ]),
                                textAlign:
                                TextAlign
                                    .center))
                      ])) ,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(48),
                          width: double.maxFinite,
                          child:
                            CustomAppBar(
                                height: getVerticalSize(48),
                                leadingWidth: 43,
                                leading: AppbarImage(
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(11),
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(
                                        left: 32, top: 12, bottom: 20),
                                    onTap: () {
                                      onTapArrowleft40(context);
                                    }),
                                centerTitle: true,
                                title: AppbarTitle(text: "Товары"),
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
                                      margin: getMargin(
                                          left: 24, top: 8, right: 12)),
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
                                      margin: getMargin(
                                          left: 16,
                                          top: 8,
                                          right: 36,
                                          bottom: 2))
                                ],
                                styleType: Style.bgFillBlue60001)
                          ),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 22),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(287),
                                        margin: getMargin(left: 23, right: 64),
                                        child: Text(
                                            "Мини Портативная Медицинская сумка Аптечка медицинские аварийные наборы Органайзер уличная домашняя медицина сумка для лекарств",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold14)),
                                    Padding(
                                        padding: getPadding(
                                            left: 23, top: 6, right: 48),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroup7367,
                                                  height: getVerticalSize(11),
                                                  width: getHorizontalSize(78),
                                                  margin: getMargin(
                                                      top: 2, bottom: 4)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, top: 1),
                                                  child: Text("4,7",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular14)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12, bottom: 1),
                                                  child: Text("504 отзыва",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular14)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13, top: 1),
                                                  child: Text("2 017 купили",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular14))
                                            ])),
                                 Container(
                                   padding: getPadding(left:21, right:21, top:18),
                                   alignment: Alignment.center,
                                   width: MediaQuery.of(context).size.width,
                                   height: 300,

                                   child:   Swiper(
                                      itemBuilder: (BuildContext context,int index){
                                        return CustomImageView(
                                          imagePath: ImageConstant.imgFrame7212127x159,

                                        );
                                      },
                                      itemCount: 3,
                                      pagination: SwiperPagination(),
                                      control: SwiperControl(),
                                    ),),

                                    Padding(
                                        padding: getPadding(left: 22, top: 15),
                                        child: Row(children: [
                                          Text("Цвет:",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular13),
                                          Padding(
                                              padding: getPadding(left: 6),
                                              child: Text("Бордовый шниц",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium13))
                                        ])),
                                    Padding(

                                      padding: getPadding(left: 21, top:10),
                                      child:Row(
                                      children: [
                                        CustomRadioButton(1, Colors.red),
                                        CustomRadioButton(2, Colors. green),
                                        CustomRadioButton(3, Colors. blue),
                                        CustomRadioButton(4, Colors. black),
                                      ],
                                    ),),



                                    Padding(
                                        padding: getPadding(left: 22, top: 14),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Цвет:",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 6, bottom: 1),
                                              child: Text("S",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 7, bottom: 1),
                                              child: Text("35/45 см",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium13Gray50001))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 21, top: 8),
                                        child: Row(
                                          children: [
                                            SizeButton(1,'S', true),
                                            SizeButton(2,'M', true),
                                            SizeButton(3,'L', false),
                                          ],
                                        ),),
                                     Container(

                                       width: MediaQuery.of(context).size.width-42,
                                            margin: getMargin(
                                                 top: 18, left:20 ,right:20 ),
                                            padding: getPadding(all: 10),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 18),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                          "1645 ₽",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtMontserratMedium15
                                                                              .copyWith(decoration: TextDecoration.lineThrough)),
                                                                      Container(
                                                                          height: getVerticalSize(
                                                                              1),
                                                                          width: getHorizontalSize(
                                                                              7),
                                                                          margin: getMargin(
                                                                              left: 6,
                                                                              top: 9,
                                                                              bottom: 8),
                                                                          decoration: BoxDecoration(color: ColorConstant.blue600)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  2),
                                                                          child: Text(
                                                                              "25%",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratSemiBold15Blue600))
                                                                    ])),
                                                            Text("1 450 ₽",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold25)
                                                          ])),
                                                  Row(
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(96),
                                                          margin: getMargin(

                                                              top: 8,
                                                              bottom: 7),
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 6,
                                                              right: 11,
                                                              bottom: 6),
                                                          decoration: AppDecoration
                                                              .outlineGray3006
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap:(){quantity--;setState(() {

                                                                    });},
                                                                    child:CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVector95,
                                                                    height:
                                                                        getVerticalSize(
                                                                            2),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            10),
                                                                    margin:
                                                                        getMargin(
                                                                            top: 9,
                                                                            bottom:
                                                                                8))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                16,
                                                                            bottom:
                                                                                1),
                                                                    child: Text('$quantity',
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratSemiBold15Bluegray800)),
                                                               GestureDetector(
                                                                   onTap: (){quantity++;setState(() {

                                                                   });},
                                                                   child:CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgPlus,
                                                                    height:
                                                                        getSize(12),
                                                                    width:
                                                                        getSize(12),
                                                                    margin:
                                                                        getMargin(
                                                                            left:
                                                                                17,
                                                                            top: 3,
                                                                            bottom:
                                                                                4)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 12,

                                                              bottom: 2),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                IconButton(onPressed: (){_isFavorite=!_isFavorite;
                                                                  setState(() {

                                                                  });
                                                                  }, icon: Icon(Icons.favorite, color: _isFavorite?Colors.red:   ColorConstant.gray30002,)),
                                                                Text(
                                                                        "Нравится",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratRegular10Bluegray800)
                                                              ])),
                                                    ],
                                                  )
                                                ])),
                                    Padding(
                                        padding: getPadding(left: 23, top: 21),
                                        child: Text("О товаре",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtH1)),

                                    ListView.separated(
                                        physics:
                                        NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(2));
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Listfourhundred2ItemWidget();
                                        }),
                                    Padding(
                                        padding: getPadding(left: 22, top: 14),
                                        child: Text("Перейти к описанию",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium12Blue600)),
                                    Padding(
                                        padding: getPadding(left: 23, top: 22),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgFolderBlueGray800,
                                              height: getVerticalSize(15),
                                              width: getHorizontalSize(18)),
                                          Padding(
                                              padding: getPadding(left: 8),
                                              child: Text(
                                                  "Безопасная оплата онлайн",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 23, top: 9),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgReplyBlueGray800,
                                              height: getVerticalSize(10),
                                              width: getHorizontalSize(11),
                                              margin: getMargin(bottom: 3)),
                                          Padding(
                                              padding: getPadding(left: 12),
                                              child: Text("Возврат 30 дней",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium12))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 23, top: 22),
                                        child: Text("Рейтинг и отзывы",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtH1)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 23, top: 18, right: 23),
                                            padding: getPadding(
                                                left: 11,
                                                top: 9,
                                                right: 11,
                                                bottom: 9),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "504 отзыва от покупателей",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular12Gray50001),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 10, bottom: 3),
                                                      child: Row(children: [
                                                        Container(
                                                            width: getSize(99),
                                                            height:getSize(99) ,

                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 16,
                                                                right: 16,
                                                                bottom: 16),
                                                            decoration: AppDecoration
                                                                .txtOutlineGray3003
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder49),
                                                            child: Center(child: Text("4,7",

                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:TextStyle(
                                                                  color: ColorConstant.blueGray800,
                                                                  fontSize: getFontSize(
                                                                    32,
                                                                  ),
                                                                  fontFamily: 'Montserrat',
                                                                  fontWeight: FontWeight.w600,
                                                                )))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgSettingsBlueGray800,
                                                                            height: getVerticalSize(9),
                                                                            width: getHorizontalSize(53),
                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 5),
                                                                            child: Text("5", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 5,
                                                                                bottom: 4),
                                                                            child: Container(height: getVerticalSize(5), width: getHorizontalSize(104), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.88, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 7, top: 1),
                                                                            child: Text("91%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium10))
                                                                      ]),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                            ImageConstant.img4s,
                                                                            height: getVerticalSize(9),

                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 5),
                                                                            child: Text("4", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 5,
                                                                                bottom: 4),
                                                                            child: Container(height: getVerticalSize(5), width: getHorizontalSize(104), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.88, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 7, top: 1),
                                                                            child: Text("91%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium10))
                                                                      ]),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                            ImageConstant.img3s,
                                                                            height: getVerticalSize(9),

                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 5),
                                                                            child: Text("3", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 5,
                                                                                bottom: 4),
                                                                            child: Container(height: getVerticalSize(5), width: getHorizontalSize(104), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.88, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 7, top: 1),
                                                                            child: Text("91%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium10))
                                                                      ]),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                            ImageConstant.img2s,
                                                                            height: getVerticalSize(9),

                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 5),
                                                                            child: Text("2", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 5,
                                                                                bottom: 4),
                                                                            child: Container(height: getVerticalSize(5), width: getHorizontalSize(104), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.88, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 7, top: 1),
                                                                            child: Text("91%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium10))
                                                                      ]),
                                                                  Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                            ImageConstant.img1s,
                                                                            height: getVerticalSize(9),

                                                                            margin: getMargin(top: 3, bottom: 2)),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 5),
                                                                            child: Text("1", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular12)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 5,
                                                                                bottom: 4),
                                                                            child: Container(height: getVerticalSize(5), width: getHorizontalSize(104), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(2)), child: LinearProgressIndicator(value: 0.4, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                        Padding(
                                                                            padding:
                                                                            getPadding(left: 7, top: 1),
                                                                            child: Text("91%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium10))
                                                                      ]),


                                                                ]))
                                                      ]))
                                                ]))),
                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                     height: 90,

                                     padding: getPadding(left: 21, right:21, top: 18),
                                      child:ListView.separated(
                                      scrollDirection: Axis.horizontal,

                                        shrinkWrap: true,
                                        separatorBuilder:
                                            (context, index) {
                                          return SizedBox(
                                              width:
                                              getVerticalSize(9));
                                        },
                                        itemCount: 6,
                                        itemBuilder: (context, index) {
                                          return CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFrame7621,

                                              radius:
                                              BorderRadius.circular(
                                                  getHorizontalSize(
                                                      10)));
                                        }),),
                                    
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 21, top: 18, right: 21),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(9));
                                                },
                                                itemCount: 2,
                                                itemBuilder: (context, index) {
                                                  return Listellipse153ItemWidget();
                                                }))),

                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 10),
                                            child: Text(
                                                "Показать еще 501 отзыв",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium12Blue600))),
                                    Container(
                                       // height: MediaQuery.of(context).size.height/10,
                                        width: MediaQuery.of(context).size.width,
                                        margin: getMargin(left: 3, top: 26),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 21, right: 22),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Похожие товары",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtH1),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            12),
                                                                child: GridView
                                                                    .builder(
                                                                        shrinkWrap:
                                                                            true,
                                                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                            mainAxisExtent: MediaQuery.of(context).size.height/3.5,
                                                                            crossAxisCount:
                                                                                2,
                                                                            mainAxisSpacing: getHorizontalSize(
                                                                                11),
                                                                            crossAxisSpacing: getHorizontalSize(
                                                                                11)),
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        itemCount:
                                                                            4,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return ShopItemWidget();
                                                                        }))
                                                          ]))),

                                            ]))
                                  ])))
                    ]))));
  }

  onTapArrowleft40(BuildContext context) {
    Navigator.pop(context);
  }
}
