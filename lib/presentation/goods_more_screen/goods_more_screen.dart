import '../goods_more_screen/widgets/listellipse152_item_widget.dart';
import '../goods_more_screen/widgets/listfourhundred1_item_widget.dart';
import '../goods_more_screen/widgets/listfourhundred_item_widget.dart';
import '../goods_more_screen/widgets/listframe7367_item_widget.dart';
import '../goods_more_screen/widgets/slider_item_widget.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GoodsMoreScreen extends StatelessWidget {
  int silderIndex = 1;

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
                      onTapArrowleft39(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Товары"),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgFavorite,
                      margin: getMargin(left: 24, top: 8, right: 12)),
                  AppbarImage(
                      height: getSize(26),
                      width: getSize(26),
                      imagePath: ImageConstant.imgGroup7508,
                      margin: getMargin(left: 16, top: 8, right: 36, bottom: 2))
                ],
                styleType: Style.bgFillBlue60001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 22),
                    child: Container(
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder26),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
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
                                      style: AppStyle.txtMontserratSemiBold14)),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 6, right: 48),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup7367,
                                            height: getVerticalSize(11),
                                            width: getHorizontalSize(78),
                                            margin:
                                                getMargin(top: 2, bottom: 4)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 1),
                                            child: Text("4,7",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular14)),
                                        Padding(
                                            padding:
                                                getPadding(left: 12, bottom: 1),
                                            child: Text("504 отзыва",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular14)),
                                        Padding(
                                            padding:
                                                getPadding(left: 13, top: 1),
                                            child: Text("2 017 купили",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular14))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 16),
                                      decoration: AppDecoration.fillGray30001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      ImageConstant
                                                          .imgFrame7212326x375),
                                                  fit: BoxFit.cover)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CarouselSlider.builder(
                                                options: CarouselOptions(
                                                    height:
                                                        getVerticalSize(326),
                                                    initialPage: 0,
                                                    autoPlay: true,
                                                    viewportFraction: 1.0,
                                                    enableInfiniteScroll: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    onPageChanged:
                                                        (index, reason) {
                                                      silderIndex = index;
                                                    }),
                                                itemCount: 1,
                                                itemBuilder: (context, index,
                                                    realIndex) {
                                                  return SliderItemWidget();
                                                })
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(4),
                                      margin: getMargin(top: 14),
                                      child: SmoothIndicator(
                                          offset: 0,
                                          count: 4,
                                          size: Size.zero,
                                          effect: ScrollingDotsEffect(
                                              spacing: 4,
                                              activeDotColor:
                                                  ColorConstant.blueGray800,
                                              dotColor: ColorConstant.gray50001,
                                              dotHeight: getVerticalSize(4),
                                              dotWidth:
                                                  getHorizontalSize(8))))),
                              Container(
                                  height: getVerticalSize(228),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 15),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 21, right: 24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1),
                                                          child: Row(children: [
                                                            Text("Цвет:",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratRegular13),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            6),
                                                                child: Text(
                                                                    "Бордовый шниц",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium13))
                                                          ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFrame7585,
                                                          height:
                                                              getVerticalSize(
                                                                  42),
                                                          width:
                                                              getHorizontalSize(
                                                                  192),
                                                          margin: getMargin(
                                                              top: 8)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 14),
                                                          child: Row(children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "Цвет:",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRegular13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 6,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "S",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium13)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 7,
                                                                    bottom: 1),
                                                                child: Text(
                                                                    "35/45 см",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium13Gray50001))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Row(children: [
                                                            Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 7,
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            7),
                                                                decoration: AppDecoration
                                                                    .outlineBlue600
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text("S",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratSemiBold15Bluegray800)
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 7,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            7),
                                                                decoration: AppDecoration
                                                                    .outlineGray3006
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text("M",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratSemiBold15Bluegray800)
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            8),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 7,
                                                                        right:
                                                                            17,
                                                                        bottom:
                                                                            7),
                                                                decoration: AppDecoration
                                                                    .outlineGray3007
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text("L",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratSemiBold15Bluegray400)
                                                                    ]))
                                                          ])),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 2, top: 18),
                                                          padding: getPadding(
                                                              all: 10),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text("1645 ₽", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium15.copyWith(decoration: TextDecoration.lineThrough)),
                                                                                Container(height: getVerticalSize(1), width: getHorizontalSize(7), margin: getMargin(left: 6, top: 9, bottom: 8), decoration: BoxDecoration(color: ColorConstant.blue600)),
                                                                                Padding(padding: getPadding(left: 2), child: Text("25%", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15Blue600))
                                                                              ])),
                                                                      Text(
                                                                          "1 450 ₽",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratSemiBold25)
                                                                    ]),
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            86),
                                                                    margin: getMargin(
                                                                        left:
                                                                            47,
                                                                        top: 8,
                                                                        bottom:
                                                                            7),
                                                                    padding: getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 6,
                                                                        right:
                                                                            11,
                                                                        bottom:
                                                                            6),
                                                                    decoration: AppDecoration
                                                                        .outlineGray3006
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgVector95,
                                                                              height: getVerticalSize(2),
                                                                              width: getHorizontalSize(10),
                                                                              margin: getMargin(top: 9, bottom: 8)),
                                                                          Padding(
                                                                              padding: getPadding(left: 16, bottom: 1),
                                                                              child: Text("1", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold15Bluegray800)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgPlus,
                                                                              height: getSize(12),
                                                                              width: getSize(12),
                                                                              margin: getMargin(left: 17, top: 3, bottom: 4))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 8,
                                                                        bottom:
                                                                            2),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgFavoriteGray50001,
                                                                              height: getSize(22),
                                                                              width: getSize(22)),
                                                                          Padding(
                                                                              padding: getPadding(top: 2),
                                                                              child: Text("Нравится", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular10Bluegray800))
                                                                        ]))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: getMargin(bottom: 41),
                                                padding: getPadding(
                                                    left: 20, right: 20),
                                                decoration: AppDecoration
                                                    .gradientWhiteA700WhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7, right: 2),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                    child: CustomButton(
                                                                        height: getVerticalSize(
                                                                            56),
                                                                        text:
                                                                            "В корзину",
                                                                        margin: getMargin(
                                                                            right:
                                                                                1),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .FillBluegray800,
                                                                        fontStyle:
                                                                            ButtonFontStyle.MontserratRomanSemiBold16)),
                                                                Expanded(
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapButtonfilldisab(
                                                                              context);
                                                                        },
                                                                        child: Container(
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
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Доставка",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blueGray800,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "15-",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blue600,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w500)),
                                                                    TextSpan(
                                                                        text:
                                                                            "18 февраля",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blue600,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w500))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 23, top: 20),
                                  child: Text("О товаре",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtH1)),
                              Padding(
                                  padding: getPadding(left: 23, top: 14),
                                  child: Row(children: [
                                    Text("Страна-изготовитель",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium12Gray50001),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(69),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray20003,
                                                indent: getHorizontalSize(6)))),
                                    Padding(
                                        padding: getPadding(left: 6),
                                        child: Text("Россия",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium12Blue600))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 23, top: 7, right: 31),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Материал",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium12Gray50001),
                                            Padding(
                                                padding: getPadding(
                                                    top: 7, bottom: 6),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(139),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .gray20003,
                                                        indent:
                                                            getHorizontalSize(
                                                                6)))),
                                            Padding(
                                                padding: getPadding(left: 6),
                                                child: Text("Хлопок, полиэстр",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 7, right: 128),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(7));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListfourhundredItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(left: 22, top: 14),
                                  child: Text("Перейти к описанию",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratMedium12Blue600)),
                              Padding(
                                  padding: getPadding(left: 23, top: 24),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgFolderBlueGray800,
                                        height: getVerticalSize(15),
                                        width: getHorizontalSize(18)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("Безопасная оплата онлайн",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratMedium12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 23, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgReplyBlueGray800,
                                        height: getVerticalSize(10),
                                        width: getHorizontalSize(11),
                                        margin: getMargin(top: 2, bottom: 2)),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text("Возврат 30 дней",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratMedium12))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 23, top: 24),
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
                                          top: 8,
                                          right: 11,
                                          bottom: 8),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("504 отзыва от покупателей",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRegular12Gray50001),
                                            Padding(
                                                padding: getPadding(
                                                    top: 11, bottom: 4),
                                                child: Row(children: [
                                                  Container(
                                                      width: getSize(99),
                                                      margin: getMargin(
                                                          top: 8, bottom: 8),
                                                      padding: getPadding(
                                                          left: 18,
                                                          top: 24,
                                                          right: 18,
                                                          bottom: 24),
                                                      decoration: AppDecoration
                                                          .txtOutlineGray3003
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder49),
                                                      child: Text("4,7",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold40)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 4),
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
                                                                          ImageConstant
                                                                              .imgSettingsBlueGray800,
                                                                      height:
                                                                          getVerticalSize(
                                                                              9),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              53),
                                                                      margin: getMargin(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              3)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              5),
                                                                      child: Text(
                                                                          "5",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratRegular12)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5),
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              5),
                                                                          width: getHorizontalSize(
                                                                              104),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(2)),
                                                                              child: LinearProgressIndicator(value: 0.88, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blueGray800))))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1),
                                                                      child: Text(
                                                                          "91%",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratMedium10))
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 9),
                                                                child: ListView
                                                                    .separated(
                                                                        physics:
                                                                            NeverScrollableScrollPhysics(),
                                                                        shrinkWrap:
                                                                            true,
                                                                        separatorBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return SizedBox(
                                                                              height: getVerticalSize(9));
                                                                        },
                                                                        itemCount:
                                                                            2,
                                                                        itemBuilder:
                                                                            (context,
                                                                                index) {
                                                                          return Listframe7367ItemWidget();
                                                                        })),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgNotification,
                                                                          height: getVerticalSize(
                                                                              9),
                                                                          width: getHorizontalSize(
                                                                              20),
                                                                          margin: getMargin(
                                                                              top: 3,
                                                                              bottom: 3)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5),
                                                                          child: Text(
                                                                              "2",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular12)),
                                                                      Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  5,
                                                                              bottom:
                                                                                  5),
                                                                          decoration: AppDecoration.outlineGray50001.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder2),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(height: getVerticalSize(4), width: getHorizontalSize(2), decoration: BoxDecoration(color: ColorConstant.blueGray800))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "1%",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium10))
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgStarBlueGray800,
                                                                          height: getSize(
                                                                              9),
                                                                          width: getSize(
                                                                              9),
                                                                          margin: getMargin(
                                                                              top: 3,
                                                                              bottom: 3)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5),
                                                                          child: Text(
                                                                              "1",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratRegular12)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  118,
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "0%",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium10))
                                                                    ]))
                                                          ]))
                                                ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 23, top: 121, right: 22),
                                      child: ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(9));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return Listellipse152ItemWidget();
                                          }))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("Показать еще 501 отзыв",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratMedium12Blue600))),
                              Container(
                                  height: getVerticalSize(306),
                                  width: getHorizontalSize(372),
                                  margin: getMargin(left: 3, top: 25),
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
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Похожие товары",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              AppStyle.txtH1),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14),
                                                          child: ListView
                                                              .separated(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(14));
                                                                  },
                                                                  itemCount: 2,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return Listfourhundred1ItemWidget();
                                                                  }))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 19, right: 19),
                                                decoration: AppDecoration
                                                    .gradientWhiteA700WhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 7),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                    child: CustomButton(
                                                                        height: getVerticalSize(
                                                                            56),
                                                                        text:
                                                                            "В корзину",
                                                                        margin: getMargin(
                                                                            right:
                                                                                1),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .FillBluegray800,
                                                                        fontStyle:
                                                                            ButtonFontStyle.MontserratRomanSemiBold16)),
                                                                Expanded(
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapButtonfilldisab1(
                                                                              context);
                                                                        },
                                                                        child: Container(
                                                                            margin: getMargin(left: 1),
                                                                            padding: getPadding(left: 16, top: 10, right: 16, bottom: 10),
                                                                            decoration: AppDecoration.outlineIndigo200491.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Text("Купить сейчас", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtMontserratRomanSemiBold16),
                                                                              Padding(
                                                                                  padding: getPadding(top: 2),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "1 450 ", style: TextStyle(color: ColorConstant.gray50Cc, fontSize: getFontSize(13), fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                                                                                        TextSpan(text: "₽", style: TextStyle(color: ColorConstant.gray50Cc, fontSize: getFontSize(13), fontFamily: 'Montserrat', fontWeight: FontWeight.w700))
                                                                                      ]),
                                                                                      textAlign: TextAlign.center))
                                                                            ]))))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Доставка",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blueGray800,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "15-",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blue600,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w500)),
                                                                    TextSpan(
                                                                        text:
                                                                            "18 февраля",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .blue600,
                                                                            fontSize: getFontSize(
                                                                                15),
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontWeight:
                                                                                FontWeight.w500))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapButtonfilldisab(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.heckoutScreen);
  }

  onTapButtonfilldisab1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.heckoutScreen);
  }

  onTapArrowleft39(BuildContext context) {
    Navigator.pop(context);
  }
}
