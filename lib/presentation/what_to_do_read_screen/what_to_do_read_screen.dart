import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class WhatToDoReadScreen extends StatelessWidget {
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
                      Navigator.pop(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Что делать"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 11, right: 15, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 8, top: 13),
                          child: Text("Что можно",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold20)),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Row(children: [
                            Container(
                                height: getSize(13),
                                width: getSize(13),
                                margin: getMargin(top: 3, bottom: 2),
                                decoration: BoxDecoration(
                                    color: ColorConstant.blue60001,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(6)))),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("наложить шину",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium15Bluegray800))
                          ])),
                      Padding(
                          padding: getPadding(top: 12, right: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(13),
                                    width: getSize(13),
                                    margin: getMargin(top: 5, bottom: 57),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue60001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)))),
                                Container(
                                    width: getHorizontalSize(311),
                                    child: Text(
                                        "при открытом переломе — освободить рану от одежды (снять или разрезать ткань), остановить кровь, обработать рану и наложить стерильную повязку",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Bluegray800))
                              ])),
                      Padding(
                          padding: getPadding(left: 8, top: 14),
                          child: Text("Нельзя",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold20)),
                      Padding(
                          padding: getPadding(top: 15, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(13),
                                    width: getSize(13),
                                    margin: getMargin(top: 2, bottom: 56),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue60001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)))),
                                Container(
                                    width: getHorizontalSize(314),
                                    child: Text(
                                        "пытаться усадить человека или помочь ему встать, особенно если повреждены позвоночник, череп, ребра или ноги;",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Bluegray800))
                              ])),
                      Padding(
                          padding: getPadding(right: 12),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(13),
                                    width: getSize(13),
                                    margin: getMargin(top: 1, bottom: 39),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue60001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)))),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(308),
                                        margin: getMargin(left: 11),
                                        child: Text(
                                            "вправлять поврежденную конечность, если вы не можете точно определить характер травмы;",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium15Bluegray800)))
                              ])),
                      Padding(
                          padding: getPadding(top: 9, right: 68),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(13),
                                    width: getSize(13),
                                    margin: getMargin(top: 5, bottom: 21),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue60001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)))),
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(252),
                                        margin: getMargin(left: 11),
                                        child: Text(
                                            "переносить пострадавшего без наложения шины;",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium15Bluegray800)))
                              ])),
                      Padding(
                          padding: getPadding(top: 17, right: 26),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(13),
                                    width: getSize(13),
                                    margin: getMargin(top: 2, bottom: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue60001,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6)))),
                                Padding(
                                    padding: getPadding(left: 11),
                                    child: Text(
                                        "давать пострадавшему воду или еду.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratMedium15Bluegray800))
                              ])),
                      Padding(
                          padding: getPadding(left: 8, top: 16),
                          child: Text("Как наложить шину",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold20)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(309),
                              margin: getMargin(left: 16, top: 11, right: 19),
                              child: Text(
                                  "Шина- что то твердое или мягкое, даже часть тела, которой можно зафиксировать повреждение",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular15))),
            Padding(
            padding: getPadding(top: 12, right: 9),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: getSize(13),
                  width: getSize(13),
                  margin: getMargin(top: 5, bottom: 57),
                  decoration: BoxDecoration(
                      color: ColorConstant.blue60001,
                      borderRadius: BorderRadius.circular(
                          getHorizontalSize(6)))),
              Container(
                  width: getHorizontalSize(311),
                  child: Text(
                      "подложите под шину мягкую повязку — бинт или кусок ткани, чтобы конструкция не давила на травмированный участок тела. Если нужно зафиксировать кисть — вложите в ладонь ватно-марлевый или тканевый валик",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .txtMontserratMedium15Bluegray800))
            ])),

                    ])),
        ));
  }
}
