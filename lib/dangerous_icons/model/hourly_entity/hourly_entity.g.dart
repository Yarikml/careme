// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyEntityImpl _$$HourlyEntityImplFromJson(Map<String, dynamic> json) =>
    _$HourlyEntityImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windSpeed: (json['wind_speed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windDirection: (json['wind_direction_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      surfacePressure: (json['surface_pressure'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      solarRadiation: (json['direct_radiation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$HourlyEntityImplToJson(_$HourlyEntityImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.windDirection,
      'surface_pressure': instance.surfacePressure,
      'direct_radiation': instance.solarRadiation,
    };
