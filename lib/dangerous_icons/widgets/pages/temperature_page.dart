import 'package:careme24/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:careme24/dangerous_icons/model/current_entity/current_entity.dart';
import 'package:careme24/dangerous_icons/model/daily_entity/daily_entity.dart';
import 'package:careme24/dangerous_icons/model/hourly_entity/hourly_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../custom_widget_my/weather_at_day.dart';
import '../../../custom_widget_my/weather_at_hour.dart';
import '../../../presentation/prehistoric_phenomenon_heat_screen/prehistoric_phenomenon_heat_screen.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_button.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({
    super.key,
    required this.currentWeather,
    required this.hourlyWeather,
    required this.dailyWeather,
  });

  final CurrentEntity currentWeather;
  final HourlyEntity hourlyWeather;
  final DailyEntity dailyWeather;

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  late final Placemark location;

  late DateTime selectedDate;

  final currentHours = <DateTime>[];
  final currentTemperatures = <double>[];

  void getHourlyWeather(DateTime date) {
    currentHours.clear();
    currentTemperatures.clear();
    for (var i = 0; i < widget.hourlyWeather.formattedTimes.length; i++) {
      DateTime time = widget.hourlyWeather.formattedTimes[i];
      if (time.day == date.day) {
        currentHours.add(time);
        currentTemperatures.add(widget.hourlyWeather.temperature[i]);
      }
    }
    setState(() {});
  }

  @override
  void initState() {
    selectedDate = widget.dailyWeather.formattedDates
        .where((element) => element.day == DateTime.now().day)
        .first;
    getHourlyWeather(selectedDate);
    location = context.read<AuthBloc>().state.location!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Фактор опасности',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 79,
                      width: 79,
                      margin: EdgeInsets.only(right: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFF846),
                            Color(0xFFFFE600),
                          ],
                        ),
                      ),
                      child: SvgPicture.asset('assets/images/img_settings.svg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Высокая температура',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtMontserratRomanSemiBold18Bluegray800),
                        Padding(
                            padding: getPadding(top: 1),
                            child: Text(location.locality!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium15Blue600)),
                        CustomButton(
                            height: getVerticalSize(38),
                            width: getHorizontalSize(139),
                            text: "Аномально",
                            margin: getMargin(top: 8),
                            variant: ButtonVariant.FillYellowA40001,
                            padding: ButtonPadding.PaddingAll9,
                            fontStyle:
                                ButtonFontStyle.MontserratRomanMedium18Lime900)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin: getMargin(bottom: 8, top: 16, left: 16, right: 16),
                padding: getPadding(left: 12, top: 19, right: 12, bottom: 19),
                decoration: AppDecoration.outlineBlack9003f3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Градусы",
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtMontserratMedium15Bluegray800),
                            Text(location.locality!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratSemiBold18)
                          ]),
                      Text("${widget.currentWeather.temperature}°",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRomanSemiBold32)
                    ])),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 4.0),
                    child: Text('Прогноз',
                        style:
                            AppStyle.txtMontserratRomanSemiBold18Bluegray800),
                  ),
                  Container(
                      height: 75,
                      margin: getMargin(bottom: 8, top: 8, left: 16, right: 16),
                      padding: getPadding(bottom: 16),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: currentHours.length,
                        separatorBuilder: (context, index) => SizedBox(
                          width: 16.0,
                        ),
                        itemBuilder: (context, index) => WheatherAtHour(
                          hours:
                              DateFormat('HH:mm').format(currentHours[index]),
                          temperature: "${currentTemperatures[index]}°",
                        ),
                      )),
                  Container(
                    margin: getMargin(bottom: 8, top: 8, left: 16, right: 16),
                    height: 75,
                    child: ListView.separated(
                        padding: getPadding(left: 1, bottom: 7),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(20));
                        },
                        itemCount: widget.dailyWeather.formattedDates.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedDate =
                                    widget.dailyWeather.formattedDates[index];
                                getHourlyWeather(selectedDate);
                              });
                            },
                            child: WheatherAtDay(
                              day: DateFormat('EE', 'ru').format(
                                widget.dailyWeather.formattedDates[index],
                              ),
                              minTemperature: widget
                                  .dailyWeather.temperatureMinValues[index]
                                  .toString(),
                              maxTemperature: widget
                                  .dailyWeather.temperatureMaxValues[index]
                                  .toString(),
                              isToday: widget
                                      .dailyWeather.formattedDates[index].day ==
                                  selectedDate.day,
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                  colors: [ColorConstant.blue60001, ColorConstant.indigoA400]),
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
                  variant: ButtonVariant.Outline_1))),
    );
  }
}
/*
* Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: getPadding(top: 12, bottom: 12),
                decoration: AppDecoration.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(alignment: Alignment.center, children: [

                      Padding(
                          padding: getPadding(top: 2),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width/1.5 ,
                                    child:Text('widget.infoAboutName',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratRomanSemiBold18Bluegray800)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text('widget.cityName',
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
                    ]),
          ],
        ),
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
                  colors: [ColorConstant.blue60001, ColorConstant.indigoA400]),
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
                  variant: ButtonVariant.Outline_1))),
    )
* */
