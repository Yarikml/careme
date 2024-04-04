import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_entity.freezed.dart';
part 'current_entity.g.dart';

@freezed
class CurrentEntity with _$CurrentEntity {
  const CurrentEntity._();

  const factory CurrentEntity({
    required final String time,
    @JsonKey(name: 'temperature_2m') required final double temperature,
    @JsonKey(name: 'wind_speed_10m') required final double windSpeed,
    @JsonKey(name: 'wind_direction_10m') required final double windDirection,
    @JsonKey(name: 'surface_pressure') required final double surfacePressure,
  }) = _CurrentEntity;

  int get surfacePressureInMM => (surfacePressure / 1.33).round();

  factory CurrentEntity.fromJson(Map<String, Object?> json) =>
      _$CurrentEntityFromJson(json);
}
