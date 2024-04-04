import 'dart:convert';
import 'dart:io';

import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

String _imgResult = "";
TextEditingController _commentController = TextEditingController();

var delivery = [false, false, false, false, false];
var qualityProduct = [false, false, false, false, false];
var qualityDeliverySpeed = [false, false, false, false, false];

class QualityControlDefoultScreen extends StatefulWidget {
  @override
  State<QualityControlDefoultScreen> createState() =>
      _QualityControlDefoultScreenState();
}

class _QualityControlDefoultScreenState
    extends State<QualityControlDefoultScreen> {
  @override
  void initState() {
    delivery = [false, false, false, false, false];
    qualityProduct = [false, false, false, false, false];
    qualityDeliverySpeed = [false, false, false, false, false];
    super.initState();
  }

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
                      onTapArrowleft56(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Отзыв"),
                styleType: Style.bgFillBlue60001),
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 23, top: 28, right: 23, bottom: 28),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(329),
                                  padding: getPadding(all: 13),
                                  decoration: AppDecoration.outlineBlack9003a
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Оцените скорость доставки",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold15Bluegray800),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                qualityDeliverySpeed = [
                                                  true,
                                                  false,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath:
                                                      qualityDeliverySpeed[0]
                                                          ? ImageConstant
                                                              .imgStarGold
                                                          : ImageConstant
                                                              .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityDeliverySpeed = [
                                                  true,
                                                  true,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath:
                                                      qualityDeliverySpeed[1]
                                                          ? ImageConstant
                                                              .imgStarGold
                                                          : ImageConstant
                                                              .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityDeliverySpeed = [
                                                  true,
                                                  true,
                                                  true,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath:
                                                      qualityDeliverySpeed[2]
                                                          ? ImageConstant
                                                              .imgStarGold
                                                          : ImageConstant
                                                              .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityDeliverySpeed = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath:
                                                      qualityDeliverySpeed[3]
                                                          ? ImageConstant
                                                              .imgStarGold
                                                          : ImageConstant
                                                              .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityDeliverySpeed = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  true
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath:
                                                      qualityDeliverySpeed[4]
                                                          ? ImageConstant
                                                              .imgStarGold
                                                          : ImageConstant
                                                              .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                          ],
                                        )
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(329),
                                  margin: getMargin(top: 17),
                                  padding: getPadding(all: 13),
                                  decoration: AppDecoration.outlineBlack9003a
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Оцените качество достваки",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold15Bluegray800),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                delivery = [
                                                  true,
                                                  false,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: delivery[0]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                delivery = [
                                                  true,
                                                  true,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: delivery[1]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                delivery = [
                                                  true,
                                                  true,
                                                  true,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: delivery[2]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                delivery = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: delivery[3]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                delivery = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  true
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: delivery[4]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                          ],
                                        )
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(329),
                                  margin: getMargin(top: 17),
                                  padding: getPadding(all: 13),
                                  decoration: AppDecoration.outlineBlack9003a
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("На сколько качественный товар",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold15Bluegray800),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                qualityProduct = [
                                                  true,
                                                  false,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: qualityProduct[0]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityProduct = [
                                                  true,
                                                  true,
                                                  false,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: qualityProduct[1]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityProduct = [
                                                  true,
                                                  true,
                                                  true,
                                                  false,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: qualityProduct[2]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityProduct = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  false
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: qualityProduct[3]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                qualityProduct = [
                                                  true,
                                                  true,
                                                  true,
                                                  true,
                                                  true
                                                ];
                                                setState(() {});
                                              },
                                              child: CustomImageView(
                                                  svgPath: qualityProduct[4]
                                                      ? ImageConstant
                                                          .imgStarGold
                                                      : ImageConstant
                                                          .imgStarGrey,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(22),
                                                  margin: getMargin(top: 12)),
                                            ),
                                          ],
                                        )
                                      ]))),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Text("Оставьте комментарий",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtMontserratSemiBold15Bluegray800)),
                          Container(
                            height: getVerticalSize(112),
                            width: getHorizontalSize(329),
                            margin: getMargin(top: 12),
                            decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(10)),
                                border: Border.all(
                                    color: ColorConstant.gray50001,
                                    width: getHorizontalSize(1))),
                            child: Container(
                              padding: getPadding(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width - 40,
                              child: TextField(
                                  textAlign: TextAlign.left,
                                  //maxLines: null,
                                  //expands: true,
                                  maxLines: 5,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                  ),
                                  controller: _commentController,
                                  decoration: InputDecoration(
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                  )),
                            ),
                          ),
                          Padding(
                              padding: getPadding(top: 22),
                              child: Text("Добавить изображение",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratRomanSemiBold15)),
                          GestureDetector(
                              onTap: () async {
                                String _pathFoto;
                                await _getFromGallery();
                              },
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(top: 7, bottom: 8),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: ColorConstant.gray50001,
                                          width: getHorizontalSize(1)),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Container(
                                      height: getVerticalSize(77),
                                      width: getHorizontalSize(86),
                                      padding: getPadding(
                                          left: 25,
                                          top: 24,
                                          right: 25,
                                          bottom: 24),
                                      decoration: AppDecoration
                                          .outlineGray500012
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Stack(children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCameraGray300,
                                            height: getVerticalSize(28),
                                            width: getHorizontalSize(35),
                                            alignment: Alignment.topCenter)
                                      ]))))
                        ]))),
            bottomNavigationBar: Container(
                height: getVerticalSize(56),
                width: getHorizontalSize(329),
                margin: getMargin(left: 25, right: 21, bottom: 40),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: getMargin(left: 112, right: 112, bottom: 15),
                          decoration: AppDecoration.outlineBlue70049.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Отправить",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRomanSemiBold18Gray50)
                              ]))),
                  CustomButton(
                      onTap: () {
                        if ((delivery.contains(true)) &
                            (qualityProduct.contains(true)) &
                            (qualityDeliverySpeed.contains(true)))
                          Navigator.pushNamed(
                              context, AppRoutes.paymentSuccessfulOneScreen);
                      },
                      height: getVerticalSize(56),
                      width: getHorizontalSize(329),
                      text: "Отправить",
                      variant: ((delivery.contains(true)) &
                              (qualityProduct.contains(true)) &
                              (qualityDeliverySpeed.contains(true)))
                          ? ButtonVariant.OutlineBlue70049
                          : ButtonVariant.FillGray50001,
                      fontStyle:
                          ButtonFontStyle.MontserratRomanSemiBold18Gray300,
                      alignment: Alignment.center)
                ]))));
  }

  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      final bytes = await File(pickedFile.path).readAsBytes();
      String img64 = base64Encode(bytes);
      _imgResult = img64;
      setState(() {});
    }
  }

  onTapArrowleft56(BuildContext context) {
    Navigator.pop(context);
  }
}
