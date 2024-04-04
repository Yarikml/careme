import 'package:careme24/custom_widget_my/information_about_virus.dart';
import 'package:careme24/custom_widget_my/main_info_widget.dart';
import 'package:careme24/custom_widget_my/wind_speed.dart';
//import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import '../../custom_widget_my/weather_at_hour.dart';
import 'package:careme24/core/app_export.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/appbar_title.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';
import 'package:careme24/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../custom_widget_my/information_at_day.dart';
import '../custom_widget_my/weather_at_day.dart';
import '../custom_widget_my/window_at_hour.dart';
import '../dirtyMap.dart';
import '../presentation/prehistoric_phenomenon_heat_screen/prehistoric_phenomenon_heat_screen.dart';

class InfoAtDayPage extends StatefulWidget {
  late String cityName;
  late String infoAboutName;
  late bool visibleMainInfo;
  late bool visibleWind;
  late bool visibleInfoAtDay;
  late bool visibleForecast;
  late bool visibleWeatherAtHour;
  late bool visibleWindowAtHour;
  late bool visibleWeatherAtDay;
  late bool visibleInfoVirus;
  late bool visibleInfoAir;
  late bool visibleInfoDirtyAir;
  late String backGroundColor;
  late String pictureOnIcon;

  InfoAtDayPage({
    required this.cityName,
    required this.infoAboutName,
    required this.visibleMainInfo,
    required this.visibleWind,
    required this.visibleInfoAtDay,
    required this.visibleForecast,
    required this.visibleWeatherAtHour,
    required this.visibleWindowAtHour,
    required this.visibleWeatherAtDay,
    required this.visibleInfoVirus,
    required this.visibleInfoAir,
    required this.visibleInfoDirtyAir,
    required this.backGroundColor,
    required this.pictureOnIcon,
  });

  @override
  State<InfoAtDayPage> createState() => _InfoAtDayPageState();
}

/*MapController controller = MapController(
  initPosition: GeoPoint(latitude: 59.939099, longitude: 30.315877),
);*/

class _InfoAtDayPageState extends State<InfoAtDayPage> {
  void initState() {
/*    MapController controller = MapController(
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
                      onTapArrowleft64(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Природные явления"),
                styleType: Style.bgFillBlue60001),
            body: Align(
              alignment: Alignment.center,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    padding: getPadding(top: 12, bottom: 12),
                    decoration: AppDecoration.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: widget.backGroundColor,
                                height: getSize(79),
                                width: getSize(79),
                                margin: getMargin(top: 5, left: 10, right: 10)),
                            CustomImageView(
                              svgPath: widget.pictureOnIcon,
                            ),
                          ]),
                          Padding(
                              padding: getPadding(top: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Text(widget.infoAboutName,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanSemiBold18Bluegray800)),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text(widget.cityName,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratMedium15Blue600)),
                                    CustomButton(
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(139),
                                        text: "Аномально",
                                        margin: getMargin(top: 8),
                                        variant: ButtonVariant.FillYellowA40001,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle: ButtonFontStyle
                                            .MontserratRomanMedium18Lime900)
                                  ]))
                        ])),
                Expanded(
                    child: ListView(children: [
                  Visibility(
                    visible: widget.visibleMainInfo,
                    child: MainInfo(),
                  ),
                  Visibility(visible: widget.visibleWind, child: WindSpeed()),
                  Visibility(
                    visible: widget.visibleInfoAtDay,
                    child: InfoAtDay(
                      date: '02.01.2023',
                      infoText:
                          "На сегодня МЧС рекомендует не ездить по дорогом рядом с каменистой месностью. Высока вероятность камнепада ",
                    ),
                  ),
                  Visibility(
                    visible: widget.visibleForecast,
                    child: Container(
                      margin: getMargin(bottom: 8, top: 8, left: 16, right: 16),
                      width: MediaQuery.of(context).size.width - 40,
                      child: Text("Прогноз",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtH1),
                    ),
                  ),
                  Visibility(
                    visible: widget.visibleWeatherAtHour,
                    child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        margin:
                            getMargin(bottom: 8, top: 8, left: 16, right: 16),
                        padding: getPadding(bottom: 16),
                        decoration: AppDecoration.outlineGray3004,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WheatherAtHour(
                                hours: "16:00",
                                temperature: "+25.7" + "°",
                              ),
                              WheatherAtHour(
                                hours: "17:00",
                                temperature: "+24.6" + "°",
                              ),
                              WheatherAtHour(
                                hours: "18:00",
                                temperature: "+23.7" + "°",
                              ),
                              WheatherAtHour(
                                hours: "19:00",
                                temperature: "+22.7" + "°",
                              ),
                              WheatherAtHour(
                                hours: "20:00",
                                temperature: "+21.7" + "°",
                              ),
                            ])),
                  ),
                  Visibility(
                    visible: widget.visibleWindowAtHour,
                    child: Container(
                      margin: getMargin(top: 8, left: 16, right: 16),
                      width: MediaQuery.of(context).size.width - 40,
                      child: Column(
                        children: [
                          Container(
                              height: 64,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 26);
                                  },
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return WindowAtHour(
                                      windDirection: "с-в",
                                      windPower: "0.99",
                                    );
                                  })),
                          Padding(
                              padding: getPadding(top: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Скорость ветра м/c",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium12),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "максимум сегодня ",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray800,
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "0.99 м/c ",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray800,
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left)
                                  ])),
                          Divider(
                            thickness: 1,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.visibleWeatherAtDay,
                    child: Container(
                        margin:
                            getMargin(bottom: 8, top: 8, left: 16, right: 16),
                        width: MediaQuery.of(context).size.width - 40,
                        height: 75,
                        child: ListView.separated(
                            padding: getPadding(left: 1, bottom: 7),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(20));
                            },
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return WheatherAtDay(
                                  isToday: true,
                                  day: "вт",
                                  minTemperature: "+25.7",
                                  maxTemperature: "+30.9");
                            })),
                  ),
                  Visibility(
                    visible: widget.visibleInfoVirus,
                    child: InfoAboutVirus(),
                  ),
                  Visibility(
                      visible: widget.visibleInfoAir,
                      child: Column(children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          /*child: OSMFlutter(
                            controller: controller,
                            //markerOption: MarkerOption(defaultMarker: MarkerIcon(icon: ,)),

                            onMapIsReady: (_ready) async {
                              await controller.currentLocation();

                              await controller.drawCircle(CircleOSM(
                                  key: "airWarning",
                                  centerPoint: GeoPoint(
                                      latitude: 59.939099,
                                      longitude: 30.315877),
                                  radius: 1000,
                                  color: Colors.red,
                                  strokeWidth: 0.3));
                            }, osmOption: OSMOption(),
                          ),*/
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DirtyMapScreen()));
                                },
                                child: Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    margin: getMargin(
                                      bottom: 8,
                                    ),
                                    padding: getPadding(
                                        left: 12,
                                        top: 19,
                                        right: 12,
                                        bottom: 19),
                                    decoration: AppDecoration.outlineBlack9003f3
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Радиус нанесения удара",
                                                    overflow: TextOverflow.clip,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratMedium15Bluegray800),
                                                Text("Москва",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratSemiBold18)
                                              ]),
                                          Text("30 км",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRomanSemiBold32)
                                        ])))),
                      ])),
                  Visibility(
                      visible: widget.visibleInfoDirtyAir,
                      child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          padding: getPadding(
                              left: 12, top: 19, right: 12, bottom: 19),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                40,
                                        child: Text("Прогноз",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtH1),
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              40,
                                          padding:
                                              getPadding(bottom: 16, top: 12),
                                          decoration:
                                              AppDecoration.outlineGray3004,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                WheatherAtHour(
                                                  hours: "16:00",
                                                  temperature: "36.2",
                                                ),
                                                WheatherAtHour(
                                                  hours: "17:00",
                                                  temperature: "17.5",
                                                ),
                                                WheatherAtHour(
                                                  hours: "18:00",
                                                  temperature: "10.6",
                                                ),
                                                WheatherAtHour(
                                                  hours: "19:00",
                                                  temperature: "22.8",
                                                ),
                                                WheatherAtHour(
                                                  hours: "20:00",
                                                  temperature: "19.3",
                                                ),
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 16, bottom: 8),
                                          child: Text("Характеристики",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray800,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                              ))),
                                      Padding(
                                          padding: getPadding(
                                              top: 10,
                                              left: 7,
                                              right: 7,
                                              bottom: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Загрязнитель',
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray800,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text('Концентрация',
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray800,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text('%',
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray800,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w500,
                                                  ))
                                            ],
                                          )),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: 5,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return _dirty(
                                                0.2, 'Название', '44 рр');
                                          }),
                                    ]),
                              ])))
                ])),
              ]),
            ),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 22, right: 22, bottom: 22),
                child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(1),
                        top: getVerticalSize(1),
                        right: getHorizontalSize(1),
                        bottom: getVerticalSize(1)),
                    strokeWidth: getHorizontalSize(1),
                    gradient: LinearGradient(
                        begin: Alignment(1.05, 0.11),
                        end: Alignment(-0.02, 0.83),
                        colors: [
                          ColorConstant.blue60001,
                          ColorConstant.indigoA400
                        ]),
                    corners: Corners(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PrehistoricPhenomenonHeatScreen()));
                        },
                        height: getVerticalSize(56),
                        text: "Рекомендации",
                        //margin: getMargin(top: 5, bottom: 5),
                        variant: ButtonVariant.Outline_1)))));
  }

  Widget _dirty(double _value, String _elementName, String _elementValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(left: 7, top: 5, bottom: 8),
          child: Container(
              // height: getVerticalSize(40),
              width: MediaQuery.of(context).size.width / 1.5,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(20)),
                      child: LinearProgressIndicator(
                          minHeight: 9.0,
                          value: _value,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              ColorConstant.blueGray800))),
                  Padding(
                      padding: getPadding(top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_elementName,
                              style: TextStyle(
                                color: ColorConstant.blueGray800,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              )),
                          Text(_elementValue,
                              style: TextStyle(
                                color: ColorConstant.gray50001,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ))
                ],
              )),
        ),
        Padding(
            padding: getPadding(left: 7, top: 1, right: 2),
            child: Container(
                padding: getPadding(all: 6),
                decoration: BoxDecoration(
                    color: ColorConstant.gray400,
                    borderRadius: BorderRadius.circular(getHorizontalSize(10))),
                child: Text("${_value * 100}%",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: getFontSize(
                        15,
                      ),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ))))
      ],
    );
  }

  onTapArrowleft64(BuildContext context) {
    Navigator.pop(context);
  }
}
