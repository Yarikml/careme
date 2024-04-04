import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_entity.freezed.dart';
part 'hourly_entity.g.dart';

@freezed
class HourlyEntity with _$HourlyEntity {
  const HourlyEntity._();

  const factory HourlyEntity({
    required final List<String> time,
    @JsonKey(name: 'temperature_2m') required final List<double> temperature,
    @JsonKey(name: 'wind_speed_10m') required final List<double> windSpeed,
    @JsonKey(name: 'wind_direction_10m')
    required final List<double> windDirection,
    @JsonKey(name: 'surface_pressure')
    required final List<double> surfacePressure,
    @JsonKey(name: 'direct_radiation')
    required final List<double> solarRadiation,
  }) = _HourlyEntity;

  List<DateTime> get formattedTimes =>
      time.map((e) => DateTime.parse(e)).toList();

  List<int> get surfacePressureInMM =>
      surfacePressure.map((e) => (e / 1.33).round()).toList();
  factory HourlyEntity.fromJson(Map<String, Object?> json) =>
      _$HourlyEntityFromJson(json);
}
