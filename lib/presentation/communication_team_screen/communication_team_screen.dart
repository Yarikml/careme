import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:careme24/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class CommunicationTeamScreen extends StatelessWidget {
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
                title: AppbarTitle(text: "Отследить"),
                styleType: Style.bgFillBlue60001),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      CustomImageView(
                          svgPath: ImageConstant.imgFrame8063,
                          height: getSize(29),
                          width: getSize(29),
                          margin: getMargin(top: 70)),
                      Container(
                          width: MediaQuery.of(context).size.width/1.5,
                          margin: getMargin(top: 16),
                          child: Text("Вашему родственнику понадобилась помощь",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratBold20Bluegray800)),
                      Container(
                          margin: getMargin(left: 21, top: 43, right: 21),
                          padding: getPadding(left: 9, right: 9),
                          decoration: AppDecoration.outlineBlack90016.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Container(
                                  decoration: AppDecoration.outlineGray3004,
                                  padding: getPadding(top: 18, right: 18,left: 18,bottom: 18),
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.person, color: Colors.blue,size: 23,),
                                   Container(
                                       width: MediaQuery.of(context).size.width/2,
                                       child: Text( "Степанов  Илья",
                                      textAlign: TextAlign.center,
                                      overflow:TextOverflow.ellipsis ,
                                      style: AppStyle.txtMontserratBold20Bluegray800,)),
                                    Text('43 года', style:AppStyle
                                        .txtMontserratSemiBold15Blue600 ,)

                                  ],
                                )),
                                Container(

                                    padding: getPadding(left: 10,top: 12, bottom: 12),
                                    decoration: AppDecoration.outlineGray3004,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(70),
                                              margin:
                                                  getMargin(top: 8, bottom: 2),
                                              child: Text("Причина вызова:",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              margin: getMargin(top: 7),
                                              child: Text(
                                                  "M1.BA41 Сильная боль в груди",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold15Blue600))
                                        ])),
                                Container(
                                    decoration: AppDecoration.outlineGray3004,
                                    padding: getPadding(left: 10,top: 12, bottom: 18),

                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(70),
                                              margin:
                                              getMargin(top: 8, bottom: 2),
                                              child: Text("Место вызова:",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              margin: getMargin(top: 7),
                                              child: Text(
                                                  "Новосибирскб улю Красная сибирь, д. 123",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold15Blue600))
                                        ])), Container(

                                    padding: getPadding(left: 10,top: 12, bottom: 18),

                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(70),
                                              margin:
                                              getMargin(top: 8, bottom: 2),
                                              child: Text("Место куда везут:",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRegular15)),
                                          Container(
                                              width: MediaQuery.of(context).size.width/2,
                                              margin: getMargin(top: 7),
                                              child: Text(
                                                  "Городская больница № 6 им.Семашко",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold15Blue600))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 51, top: 34, right: 51, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 58,
                                              width: 58,
                                              padding: IconButtonPadding
                                                  .PaddingAll15,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall)),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("Телефон",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUbuntuMedium12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 37),
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
                                                          .roundedBorder39),
                                              child: Container(
                                                  height: getSize(78),
                                                  width: getSize(78),
                                                  padding: getPadding(all: 24),
                                                  decoration: AppDecoration
                                                      .outlineGreen40049
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder39),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFrame8067,
                                                        height: getSize(29),
                                                        width: getSize(29),
                                                        alignment:
                                                            Alignment.topCenter)
                                                  ]))),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("WhatsApp",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUbuntuMedium12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 37, top: 20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(

                                            onTap:(){Navigator.pushNamed(context, AppRoutes.trackingScreen);},
                                              height: 58,
                                              width: 58,
                                              padding: IconButtonPadding
                                                  .PaddingAll15,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA700)),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("Отследить",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUbuntuMedium12))
                                        ]))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
