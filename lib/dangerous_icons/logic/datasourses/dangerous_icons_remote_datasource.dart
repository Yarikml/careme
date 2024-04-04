import 'dart:developer';

import 'package:careme24/dangerous_icons/model/forecast_info_entity/forecast_info_entity.dart';
import 'package:dio/dio.dart';

import '../../../core/constants/constants.dart';

abstract class IDangerousIconsRemoteDatasource {
  Future<ForecastInfoEntity> getForecastInfo({
    required final double lat,
    required final double lng,
    required final String startDate,
    required final String endDate,
  });
}

class DangerousIconsRemoteDatasource
    implements IDangerousIconsRemoteDatasource {
  DangerousIconsRemoteDatasource({
    required this.client,
  });

  final Dio client;

  @override
  Future<ForecastInfoEntity> getForecastInfo({
    required final double lat,
    required final double lng,
    required final String startDate,
    required final String endDate,
  }) async {
    try {
      final response = await client.get(
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lng&current=temperature_2m,surface_pressure,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,surface_pressure,wind_speed_10m,wind_direction_10m,direct_radiation&daily=temperature_2m_max,temperature_2m_min,wind_speed_10m_max&wind_speed_unit=ms&timezone=Europe%2FMoscow&start_date=$startDate&end_date=$endDate',
      );
      return ForecastInfoEntity.fromJson(response.data);
    } on Object {
      rethrow;
    }
  }
}
