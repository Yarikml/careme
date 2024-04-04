import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_entity.freezed.dart';
part 'daily_entity.g.dart';

@freezed
class DailyEntity with _$DailyEntity {
  const DailyEntity._();

  const factory DailyEntity({
    @JsonKey(name: 'time') required final List<String> dates,
    @JsonKey(name: 'temperature_2m_max')
    required final List<double> temperatureMaxValues,
    @JsonKey(name: 'temperature_2m_min')
    required final List<double> temperatureMinValues,
    @JsonKey(name: 'wind_speed_10m_max')
    required final List<double> windSpeedMaxValues,
  }) = _DailyEntity;

   List<DateTime> get formattedDates => dates.map((e) => DateTime.parse(e)).toList();

  factory DailyEntity.fromJson(Map<String, Object?> json) =>
      _$DailyEntityFromJson(json);
}
