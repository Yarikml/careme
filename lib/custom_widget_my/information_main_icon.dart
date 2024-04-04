import 'package:flutter/material.dart';
import '../core/utils/size_utils.dart';
import '../custom_page_my/information_at_day_page.dart';
import '../theme/app_style.dart';
import '../widgets/custom_image_view.dart';

class InfoMainIcon extends StatelessWidget {
  late String backGroundColor;
  late String pictureOnIcon;
  late String warningName;
  late String infoOfWarning;

  bool visibleMainInfo = false;
  bool visibleInfoAtDay = false;
  bool visibleForecast = false;
  bool visibleWind = false;
  bool visibleWeatherAtHour = false;
  bool visibleWindowAtHour = false;
  bool visibleWeatherAtDay = false;
  bool visibleInfoVirus = false;
  bool visibleInfoAir = false;
  bool visibleInfoDirtyAir = false;

  InfoMainIcon({
    required this.backGroundColor,
    required this.pictureOnIcon,
    required this.warningName,
    required this.infoOfWarning,
  });

  void changePage() {
    print(warningName);
    switch (warningName) {
      case "Загрязнение воздуха":
        visibleInfoAir = true;
        visibleInfoDirtyAir = true;
        break;
      case "Ветер":
        visibleWind = true;
        visibleForecast = true;
        visibleWindowAtHour = true;
        visibleWeatherAtDay = true;
        break;
      case "Шквал":
        visibleMainInfo = true;
        visibleForecast = true;
        visibleWindowAtHour = true;
        break;
      case "Ураган":
        visibleMainInfo = true;
        visibleForecast = true;
        visibleWindowAtHour = true;
        break;
      case "Высокая температура":
        visibleMainInfo = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        break;
      case "Низкая температура":
        visibleMainInfo = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        break;
      case "Атмосферное давление":
        visibleMainInfo = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        visibleWeatherAtDay = true;
        break;
      case "Вирусное заражение":
        visibleMainInfo = true;
        visibleInfoAtDay = true;
        visibleInfoVirus = true;
        break;
      case "Град":
        visibleInfoAtDay = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        visibleWindowAtHour = true;
        visibleWeatherAtDay = true;
        break;
      case "Гололед":
        visibleInfoAtDay = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        visibleWindowAtHour = true;
        visibleWeatherAtDay = true;
        break;
      case "Землетрясение":
        visibleMainInfo = true;
        visibleInfoAtDay = true;
        break;
      case "Извержение вулкана":
        visibleMainInfo = true;
        visibleInfoAtDay = true;
        break;
      case "Камнепад":
        visibleInfoAtDay = true;
        break;
      case "Наводнение":
        visibleInfoAtDay = true;
        break;
      case "Пожар":
        visibleInfoAtDay = true;
        visibleForecast = true;
        visibleWeatherAtHour = true;
        visibleWindowAtHour = true;
        break;
      case "Радиация":
        visibleMainInfo = true;
        visibleInfoAtDay = true;
        break;
      case "Солнечная радиация":
        visibleInfoAtDay = true;
        break;
      case "Электромагнитное излучение":
        visibleInfoAtDay = true;
        break;
      case "Снежная лавина":
        visibleInfoAtDay = true;
        break;
      case "Террористическая опасность":
        visibleInfoAtDay = true;
        break;
      case "Торнадо":
        visibleInfoAtDay = true;
        break;
      case "Туман":
        visibleInfoAtDay = true;
        break;
      case "Цунами":
        visibleInfoAtDay = true;
        break;
      case "Воздушная тревога":
        visibleInfoAir = true;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changePage();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InfoAtDayPage(
                      cityName: "Москва",
                      infoAboutName: warningName,
                      visibleMainInfo: visibleMainInfo,
                      visibleWind: visibleWind,
                      visibleInfoAtDay: visibleInfoAtDay,
                      visibleForecast: visibleForecast,
                      visibleWeatherAtHour: visibleWeatherAtHour,
                      visibleWindowAtHour: visibleWindowAtHour,
                      visibleWeatherAtDay: visibleWeatherAtDay,
                      visibleInfoVirus: visibleInfoVirus,
                      visibleInfoAir: visibleInfoAir,
                      visibleInfoDirtyAir: visibleInfoDirtyAir,
                      backGroundColor: backGroundColor,
                      pictureOnIcon: pictureOnIcon,
                    )));
      },
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            width: 90,
            child: Text(warningName,
                maxLines: null,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: AppStyle.txtMontserratMedium12)),
        Stack(alignment: Alignment.center, children: [
          CustomImageView(
              svgPath: backGroundColor,
              height: getSize(79),
              width: getSize(79),
              margin: getMargin(top: 5, left: 10, right: 10)),
          Center(
            child: CustomImageView(
              svgPath: pictureOnIcon,
              height: getSize(60),
              width: getSize(60),
            ),
          ),
        ]),
        //Image.asset("assets/images/harmfully.png"),
        Padding(
            padding: getPadding(top: 7),
            child: Text(infoOfWarning,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratSemiBold12))
      ]),
    );
  }
}
