import 'package:careme24/dangerous_icons/bloc/forecast_bloc/forecast_bloc.dart';
import 'package:careme24/dangerous_icons/widgets/dangerous_icon.dart';
import 'package:careme24/dangerous_icons/widgets/pages/pressure_page.dart';
import 'package:careme24/dangerous_icons/widgets/pages/temperature_page.dart';
import 'package:careme24/dangerous_icons/widgets/pages/wind_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DangerousIconsList extends StatelessWidget {
  const DangerousIconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(builder: (context, state) {
      return state.maybeMap(
        success: (successState) => Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              DangerousIcon(
                warningName: "Высокая температура",
                infoOfWarning:
                    '${successState.forecast.current.temperature.toString()}°',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TemperaturePage(
                        currentWeather: successState.forecast.current,
                        hourlyWeather: successState.forecast.hourly,
                        dailyWeather: successState.forecast.daily,
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/images/img_settings.svg'),
              ),
              DangerousIcon(
                warningName: "Атмосферное давление",
                infoOfWarning:
                    '${successState.forecast.current.surfacePressureInMM.toString()} мм.р.с',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PressurePage(
                        currentWeather: successState.forecast.current,
                        hourlyWeather: successState.forecast.hourly,
                        dailyWeather: successState.forecast.daily,
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/images/pressure.svg'),
              ),
              DangerousIcon(
                warningName: "Ветер",
                infoOfWarning:
                    '${successState.forecast.current.windSpeed.toString()} м/с',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WindPage(
                        currentWeather: successState.forecast.current,
                        hourlyWeather: successState.forecast.hourly,
                        dailyWeather: successState.forecast.daily,
                      ),
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/images/wind.svg'),
              ),
            ],
          ),
        ),
        orElse: () => Container(),
      );
    });
  }
}
