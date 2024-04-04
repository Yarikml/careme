// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentEntityImpl _$$CurrentEntityImplFromJson(Map<String, dynamic> json) =>
    _$CurrentEntityImpl(
      time: json['time'] as String,
      temperature: (json['temperature_2m'] as num).toDouble(),
      windSpeed: (json['wind_speed_10m'] as num).toDouble(),
      windDirection: (json['wind_direction_10m'] as num).toDouble(),
      surfacePressure: (json['surface_pressure'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentEntityImplToJson(_$CurrentEntityImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'wind_speed_10m': instance.windSpeed,
      'wind_direction_10m': instance.windDirection,
      'surface_pressure': instance.surfacePressure,
    };
