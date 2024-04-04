import 'package:freezed_annotation/freezed_annotation.dart';

import '../current_entity/current_entity.dart';
import '../daily_entity/daily_entity.dart';
import '../hourly_entity/hourly_entity.dart';

part 'forecast_info_entity.freezed.dart';
part 'forecast_info_entity.g.dart';

@freezed
class ForecastInfoEntity with _$ForecastInfoEntity {
  const ForecastInfoEntity._();

  const factory ForecastInfoEntity({
    required final CurrentEntity current,
    required final HourlyEntity hourly,
    required final DailyEntity daily,
  }) = _ForecastInfoEntity;

  factory ForecastInfoEntity.fromJson(Map<String, Object?> json) =>
      _$ForecastInfoEntityFromJson(json);
}
