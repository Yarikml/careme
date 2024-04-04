// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyEntityImpl _$$DailyEntityImplFromJson(Map<String, dynamic> json) =>
    _$DailyEntityImpl(
      dates: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperatureMaxValues: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperatureMinValues: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windSpeedMaxValues: (json['wind_speed_10m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$DailyEntityImplToJson(_$DailyEntityImpl instance) =>
    <String, dynamic>{
      'time': instance.dates,
      'temperature_2m_max': instance.temperatureMaxValues,
      'temperature_2m_min': instance.temperatureMinValues,
      'wind_speed_10m_max': instance.windSpeedMaxValues,
    };
