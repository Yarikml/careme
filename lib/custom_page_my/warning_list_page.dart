import 'package:careme24/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../presentation/prehistoric_phenomenon_heat_one_screen/prehistoric_phenomenon_heat_one_screen.dart';

import 'information_at_day_page.dart';

class WarningListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PrehistoricPhenomenonHeatOneScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.deepOrange),
                  width: 120,
                  height: 40,
                  child: Text(
                    "Температура",
                    style: AppStyle.txtMontserratMedium15Black900,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoAtDayPage(
                                cityName: "Москва",
                                infoAboutName: "Атмосферное давление",
                                visibleMainInfo: true,
                                visibleInfoAtDay: true,
                                visibleForecast: true,
                                visibleWeatherAtHour: true,
                                visibleWindowAtHour: true,
                                visibleWeatherAtDay: true,
                                visibleWind: true,
                                visibleInfoVirus: true,
                                visibleInfoDirtyAir: false,
                                backGroundColor: "123",
                                pictureOnIcon: "123",
                                visibleInfoAir: false,
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.deepOrange),
                  width: 120,
                  height: 40,
                  child: Text(
                    "Атмосферное давление",
                    style: AppStyle.txtMontserratMedium15Black900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
