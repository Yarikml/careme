// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastInfoEntityImpl _$$ForecastInfoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastInfoEntityImpl(
      current: CurrentEntity.fromJson(json['current'] as Map<String, dynamic>),
      hourly: HourlyEntity.fromJson(json['hourly'] as Map<String, dynamic>),
      daily: DailyEntity.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastInfoEntityImplToJson(
        _$ForecastInfoEntityImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
