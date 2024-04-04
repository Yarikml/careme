import 'package:careme24/dangerous_icons/logic/datasourses/dangerous_icons_remote_datasource.dart';

import '../../model/forecast_info_entity/forecast_info_entity.dart';

abstract class IDangerousIconsRepository {
  Future<ForecastInfoEntity> getForecastInfo({
    required final double lat,
    required final double lng,
    required final String startDate,
    required final String endDate,
  });
}

class DangerousIconsRepository implements IDangerousIconsRepository {
  DangerousIconsRepository({
    required this.dangerousIconsRemoteDatasource,
  });

  final IDangerousIconsRemoteDatasource dangerousIconsRemoteDatasource;

  @override
  Future<ForecastInfoEntity> getForecastInfo({
    required final double lat,
    required final double lng,
    required final String startDate,
    required final String endDate,
  }) async {
    try {
      final temperatureInfo =
          await dangerousIconsRemoteDatasource.getForecastInfo(
        lat: lat,
        lng: lng,
        startDate: startDate,
        endDate: endDate,
      );
      return temperatureInfo;
    } on Object {
      rethrow;
    }
  }
}
