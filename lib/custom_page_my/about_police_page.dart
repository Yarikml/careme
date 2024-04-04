import 'package:flutter/material.dart';
//import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import '../../car_custom_icons.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_image_view.dart';
import '../presentation/quality-control/quality-control.dart';

/*MapController controller = MapController(
  initPosition: GeoPoint(latitude: 59.939099, longitude: 30.315877),
);*/

class AboutPolice extends StatefulWidget {
  @override
  State<AboutPolice> createState() => _AboutPoliceState();
}

class _AboutPoliceState extends State<AboutPolice> {
  void initState() {
    /*MapController controller = MapController(
      initPosition: GeoPoint(latitude: 59.939099, longitude: 30.315877),
    );*/

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
                Navigator.pop(context);
              }),
          centerTitle: true,
          title: AppbarTitle(text: "Отделение"),
          styleType: Style.bgFillBlue60001),
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              child: Padding(
                  padding: getPadding(bottom: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBR301,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup12),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage17,
                                          height: getVerticalSize(224),
                                          width: getHorizontalSize(375),
                                          radius: BorderRadius.only(
                                              bottomRight: Radius.circular(
                                                  getHorizontalSize(100))))
                                    ]))),
                        Container(
                            width: getHorizontalSize(245),
                            margin: getMargin(left: 23, top: 16),
                            child: Text("Участковый пункт полиции",
                                maxLines: null,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold18)),
                        Padding(
                            padding: getPadding(left: 22, top: 6),
                            child: Text(
                                "Красный пр-т., 36, Новосибирск, Новосибирская обл",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium15)),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: getMargin(left: 23, top: 12, right: 23),
                                padding: getPadding(
                                    left: 9, top: 8, right: 9, bottom: 8),
                                decoration: AppDecoration.outlineBlack90054
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            getPadding(top: 10, bottom: 10),
                                        child: Text(
                                          "8 (383) 222-39-73",
                                          style: AppStyle
                                              .txtMontserratMedium15Black900,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.copyIcon,
                                      )
                                    ]))),
                        Padding(
                            padding: getPadding(left: 23, top: 18),
                            child: Text("Отзывы о больнице",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtH1)),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: getPadding(
                                top: 12, left: 6, right: 6, bottom: 12),
                            child: IntrinsicWidth(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                  Expanded(
                                      child: Container(
                                          padding: getPadding(
                                              left: 10,
                                              top: 8,
                                              right: 10,
                                              bottom: 8),
                                          decoration: AppDecoration
                                              .outlineBlack90054
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
                                                Padding(
                                                    padding: getPadding(
                                                        left: 2,
                                                        top: 2,
                                                        right: 4),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse152,
                                                          height: getSize(37),
                                                          width: getSize(37),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      18))),
                                                      Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 13,
                                                                      top: 2),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                        children: [
                                                                          Text(
                                                                              "Яна Романова",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium14),
                                                                          Padding(
                                                                              padding: getPadding(left: 124),
                                                                              child: Text("5", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratRegular15)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgStarGold,
                                                                              height: getSize(11),
                                                                              width: getSize(11),
                                                                              margin: getMargin(left: 1, top: 4, bottom: 3))
                                                                        ]),
                                                                    Text(
                                                                        "Москва",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratMedium12Gray50001)
                                                                  ])))
                                                    ])),
                                                Container(
                                                    width:
                                                        getHorizontalSize(289),
                                                    margin: getMargin(
                                                        top: 14, right: 17),
                                                    child: Text(
                                                        "Я благодарна Иванову Алексею Петровичу, за чуткость \nи профессионализм, благодаря ему я избежала больницы и успешно вылечилиась дома! Он отличный врач и приятный человек!",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratMedium10)),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 10, right: 4),
                                                        child: Text(
                                                            "22.04.2022",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium10)))
                                              ]))),
                                  Expanded(
                                      child: Container(
                                          margin: getMargin(left: 9),
                                          padding: getPadding(
                                              left: 10,
                                              top: 9,
                                              right: 10,
                                              bottom: 9),
                                          decoration: AppDecoration
                                              .outlineBlack90054
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, right: 4),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse152,
                                                              height:
                                                                  getSize(37),
                                                              width:
                                                                  getSize(37),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          18))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 13,
                                                                      top: 3,
                                                                      bottom:
                                                                          3),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "Яна Романова",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMontserratMedium15Black900),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Москва",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMontserratMedium10Gray300))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 101,
                                                                      top: 10,
                                                                      bottom:
                                                                          5),
                                                              child: Text("4.7",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMontserratRegular15)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgStarGold,
                                                              height:
                                                                  getSize(11),
                                                              width:
                                                                  getSize(11),
                                                              margin: getMargin(
                                                                  left: 1,
                                                                  top: 15,
                                                                  bottom: 11))
                                                        ])),
                                                Container(
                                                    width:
                                                        getHorizontalSize(298),
                                                    margin: getMargin(
                                                        top: 14, right: 9),
                                                    child: Text(
                                                        "Я благодарна Иванову Алексею Петровичу, за чуткость \nи профессионализм, благодаря ему я избежала больницы и успешно вылечилиась дома! Он отличный врач и приятный человек!",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratMedium10)),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 10, right: 4),
                                                    child: Text("22.04.2022",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratMedium10))
                                              ])))
                                ]))),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: double.maxFinite,
                                            padding: getPadding(
                                                left: 20,
                                                top: 13,
                                                right: 20,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineBlack90014
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Карла маркаса 20/2а",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium15),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2,
                                                          top: 10,
                                                          right: 52),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Text(
                                                                    "Путь",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium15Bluegray800)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 11,
                                                                    bottom: 9),
                                                                child: SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            183),
                                                                    child: Divider(
                                                                        height:
                                                                            getVerticalSize(
                                                                                1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .gray300,
                                                                        indent:
                                                                            getHorizontalSize(6)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            6),
                                                                child: Text(
                                                                    "200 м",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtH1))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2,
                                                          top: 7,
                                                          right: 8,
                                                          bottom: 5),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Text(
                                                                    "Время ожидания",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium15Bluegray800)),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 11,
                                                                    bottom: 9),
                                                                child: SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            82),
                                                                    child: Divider(
                                                                        height:
                                                                            getVerticalSize(
                                                                                1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .gray300,
                                                                        indent:
                                                                            getHorizontalSize(7)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            6),
                                                                child: Text(
                                                                    "7 мин 30 с",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtH1))
                                                          ]))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              AppRoutes.trackingScreen);
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3,
                                          width:
                                              MediaQuery.of(context).size.width,
                                         /* child: OSMFlutter(
                                            controller: controller,
                                            //markerOption: MarkerOption(defaultMarker: MarkerIcon(icon: ,)),

                                            onMapIsReady: (_ready) async {
                                              controller.addMarker(
                                                GeoPoint(
                                                    latitude: 59.853845,
                                                    longitude: 30.179760),
                                                markerIcon: MarkerIcon(
                                                    icon: Icon(
                                                  CarCustom.mchs__1_,
                                                  size: 100,
                                                )),
                                              );
                                              //_route();
                                              RoadInfo roadInfo =
                                                  await controller.drawRoad(
                                                GeoPoint(
                                                    latitude: 59.853845,
                                                    longitude: 30.179760),
                                                GeoPoint(
                                                    latitude: 59.949474,
                                                    longitude: 30.264044),
                                                roadType: RoadType.car,
                                                //intersectPoint : [ GeoPoint(latitude: 47.4361, longitude: 8.6156), GeoPoint(latitude: 47.4481, longitude: 8.6266)],
                                                roadOption: RoadOption(
                                                  roadWidth: 10,
                                                  roadColor: Colors.red,
                                                ),
                                              );
                                            },
                                            osmOption: OSMOption(),
                                          )*/
                                        ))
                                  ])
                            ])),
                      ])))),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QualityControl()));
        },
        child: Container(
          width: 1,
          height: 100,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                    colors: [ColorConstant.indigoA400, ColorConstant.blue60001],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
              ),
              child: Center(
                  child: Text(
                "Записаться",
                style: AppStyle.txtMontserratSemiBold15,
              )),
            ),
          ),
        ),
      ),
    ));
  }
}
