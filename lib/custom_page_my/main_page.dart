import 'package:careme24/core/app_export.dart';
import 'package:careme24/custom_widget_my/information_main_icon.dart';
import 'package:careme24/dangerous_icons/widgets/dangerous_icons_list.dart';
import 'package:careme24/presentation/news_button_page/news_button_page.dart';
import 'package:careme24/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../med_home_page.dart';
import '../widgets/drawer_widget.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));

    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        drawer: Drawer(
          child: DrawerWidget(
            userName: 'Aram Balayan',
            phoneNumber: '+79033245454',
            avatarPath: 'assets/images/Avatar.png',
          ),
        ),
        body: Container(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: double.maxFinite,
                  child: Container(
                      padding: getPadding(top: 0, bottom: 20),
                      decoration: AppDecoration.outlineBlack90026,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              margin: EdgeInsets.only(bottom: 15),
                              height: 62,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 23,
                                ),
                                child: Row(children: [
                                  GestureDetector(
                                      onTap: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      child: Image.asset(
                                          'assets/images/menu.png')),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(top: 10),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText:
                                            'г. Новосибирск, ул Ленина, прос',
                                        prefixIcon: Image.asset(
                                            'assets/images/location_on.png'),
                                        hintStyle:
                                            TextStyle(color: Color(0xffB8BBC3)),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 10), //

                                  Image.asset('assets/images/notification.png'),
                                ]),
                              ),
                            ),
                            DangerousIconsList(),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/critical.svg',
                                          pictureOnIcon:
                                              'assets/images/airPollution.svg',
                                          warningName: "Загрязнение воздуха",
                                          infoOfWarning: "AQR 78"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/harmfully.svg',
                                          pictureOnIcon:
                                              'assets/images/img_settings.svg',
                                          warningName: "Высокая температура",
                                          infoOfWarning: "+29°"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/wind.svg',
                                          warningName: "Ветер",
                                          infoOfWarning: "10 м/с ю-в"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/good.svg',
                                          pictureOnIcon:
                                              'assets/images/pressure.svg',
                                          warningName: "Атмосферное давление",
                                          infoOfWarning: "720 мм.р.с"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/unactive.svg',
                                          pictureOnIcon:
                                              'assets/images/forestFire.svg',
                                          warningName: "Пожар",
                                          infoOfWarning: "10"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/harmfully.svg',
                                          pictureOnIcon:
                                              'assets/images/img_virus.svg',
                                          warningName: "Вирусное заражение",
                                          infoOfWarning: "70%"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/harmfully.svg',
                                          pictureOnIcon:
                                              'assets/images/img_air_warning.svg',
                                          warningName: "Воздушная тревога",
                                          infoOfWarning: "30 км"),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_black_ice.svg',
                                          warningName: "Гололед",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/good.svg',
                                          pictureOnIcon:
                                              'assets/images/img_hail.svg',
                                          warningName: "Град",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_earthquake.svg',
                                          warningName: "Землетрясение",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/harmfully.svg',
                                          pictureOnIcon:
                                              'assets/images/img_volcano.svg',
                                          warningName: "Извержение вулкана",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_rockfall.svg',
                                          warningName: "Камнепад",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_flood.svg',
                                          warningName: "Наводнение",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/harmfully.svg',
                                          pictureOnIcon:
                                              'assets/images/img_radiation.svg',
                                          warningName: "Радиация",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_solar_radiation.svg',
                                          warningName: "Солнечная радиация",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_electromagnetic_radiation.svg',
                                          warningName:
                                              "Электромагнитное излучение",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/good.svg',
                                          pictureOnIcon:
                                              'assets/images/img_snow_avalanche.svg',
                                          warningName: "Снежная лавина",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/good.svg',
                                          pictureOnIcon:
                                              'assets/images/img_terrorist_danger.svg',
                                          warningName:
                                              "Террористическая опасность",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_tornado.svg',
                                          warningName: "Торнадо",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/good.svg',
                                          pictureOnIcon:
                                              'assets/images/img_fog.svg',
                                          warningName: "Туман",
                                          infoOfWarning: ""),
                                      InfoMainIcon(
                                          backGroundColor:
                                              'assets/images/medium.svg',
                                          pictureOnIcon:
                                              'assets/images/img_tsunami.svg',
                                          warningName: "Цунами",
                                          infoOfWarning: ""),
                                    ])))
                          ]))),
              Expanded(
                  flex: 1,
                  child: ListView(children: [
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(top: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: GestureDetector(
                                onTap: () {
                                  onTapColumnseven(context);
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        bottom: 10),
                                    decoration: AppDecoration.fillBlue100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 15, top: 0, bottom: 0),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Магазин",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratSemiBold15),
                                                    Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            3,
                                                        margin:
                                                            getMargin(top: 3),
                                                        child: Text(
                                                            "Все для вашего здоровья",
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium12WhiteA700))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgShop,
                                              height: getVerticalSize(122),
                                              margin: getMargin(
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 5))
                                        ]))))),
                    Padding(
                        padding: getPadding(left: 20, right: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3.5,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      30,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      AppRoutes.homeTwoScreen);
                                                },
                                                child: Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: AppDecoration
                                                        .fillIndigoA100
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child:
                                                              CustomImageView(
                                                            height: (MediaQuery.of(context)
                                                                            .size
                                                                            .height /
                                                                        4) /
                                                                    2 -
                                                                20,
                                                            svgPath: ImageConstant
                                                                .imgFrameHalf,
                                                          )),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 15,
                                                                ),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                          "Полиция",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtMontserratSemiBold15),
                                                                      Container(
                                                                          margin: getMargin(
                                                                              top:
                                                                                  4),
                                                                          child: Text(
                                                                              "Безопасность",
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium12WhiteA700))
                                                                    ])),
                                                          ]),
                                                    ])))),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      AppRoutes.homeOneScreen);
                                                },
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .fillYellow700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 15,
                                                              ),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text("МЧС",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratSemiBold15),
                                                                    Container(
                                                                        width:
                                                                            MediaQuery.of(context).size.width /
                                                                                5,
                                                                        margin: getMargin(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "Будь всегда  \nна готове",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium12WhiteA700))
                                                                  ])),
                                                          CustomImageView(
                                                            height: (MediaQuery.of(context)
                                                                            .size
                                                                            .height /
                                                                        4) /
                                                                    2 -
                                                                5,
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFireHalf,
                                                          )
                                                        ]))))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.homeFourScreen);
                                  },
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(left: 10),
                                      color: ColorConstant.pink300,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.5,
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              30,
                                          decoration: AppDecoration.fillPink300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                CustomImageView(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            3,
                                                    imagePath: ImageConstant
                                                        .imgGroup7335,
                                                    alignment:
                                                        Alignment.bottomRight),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 14, top: 14),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Скорая",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratSemiBold15),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          94),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              3),
                                                                  child: Text(
                                                                      "Быстрый вызов помощи",
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtMontserratMedium12WhiteA700))
                                                            ]))),
                                              ]))))
                            ])),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewsButtonPage(
                                        bottomBarIndex: 0,
                                      )));
                        },
                        child: Container(
                            clipBehavior: Clip.antiAlias,
                            margin: getMargin(
                                left: 20, top: 10, right: 20, bottom: 10),
                            decoration: AppDecoration.fillCyan300.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          left: 15, top: 0, bottom: 0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Новости",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold15),
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    3,
                                                margin: getMargin(top: 3),
                                                child: Text(
                                                    "Узнавайте больше из СМИ",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium12WhiteA700))
                                          ])),
                                  CustomImageView(
                                      height: getVerticalSize(122),
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      imagePath: ImageConstant.imgNews,
                                      alignment: Alignment.bottomRight),
                                ])))
                  ]))
            ])),
      ),
    ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.newsButtonPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.newsButtonPage:
        return NewsButtonPage(
          bottomBarIndex: 0,
        );
      default:
        return DefaultWidget();
    }
  }

  onTapColumnseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapStackframe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeTwoScreen);
  }

  onPolicePage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonCallPoliceScreen);
  }

  onMESPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonHoneyCallActivItemScreen);
  }

  onTapStackfourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.buttonHoneyCallOneScreen);
  }

  onTapRowsixteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newsButtonContainerScreen);
  }
}
