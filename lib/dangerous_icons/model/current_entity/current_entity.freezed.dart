// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentEntity _$CurrentEntityFromJson(Map<String, dynamic> json) {
  return _CurrentEntity.fromJson(json);
}

/// @nodoc
mixin _$CurrentEntity {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction_10m')
  double get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: 'surface_pressure')
  double get surfacePressure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentEntityCopyWith<CurrentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentEntityCopyWith<$Res> {
  factory $CurrentEntityCopyWith(
          CurrentEntity value, $Res Function(CurrentEntity) then) =
      _$CurrentEntityCopyWithImpl<$Res, CurrentEntity>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') double temperature,
      @JsonKey(name: 'wind_speed_10m') double windSpeed,
      @JsonKey(name: 'wind_direction_10m') double windDirection,
      @JsonKey(name: 'surface_pressure') double surfacePressure});
}

/// @nodoc
class _$CurrentEntityCopyWithImpl<$Res, $Val extends CurrentEntity>
    implements $CurrentEntityCopyWith<$Res> {
  _$CurrentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? surfacePressure = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      surfacePressure: null == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentEntityImplCopyWith<$Res>
    implements $CurrentEntityCopyWith<$Res> {
  factory _$$CurrentEntityImplCopyWith(
          _$CurrentEntityImpl value, $Res Function(_$CurrentEntityImpl) then) =
      __$$CurrentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') double temperature,
      @JsonKey(name: 'wind_speed_10m') double windSpeed,
      @JsonKey(name: 'wind_direction_10m') double windDirection,
      @JsonKey(name: 'surface_pressure') double surfacePressure});
}

/// @nodoc
class __$$CurrentEntityImplCopyWithImpl<$Res>
    extends _$CurrentEntityCopyWithImpl<$Res, _$CurrentEntityImpl>
    implements _$$CurrentEntityImplCopyWith<$Res> {
  __$$CurrentEntityImplCopyWithImpl(
      _$CurrentEntityImpl _value, $Res Function(_$CurrentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? surfacePressure = null,
  }) {
    return _then(_$CurrentEntityImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      surfacePressure: null == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentEntityImpl extends _CurrentEntity {
  const _$CurrentEntityImpl(
      {required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature,
      @JsonKey(name: 'wind_speed_10m') required this.windSpeed,
      @JsonKey(name: 'wind_direction_10m') required this.windDirection,
      @JsonKey(name: 'surface_pressure') required this.surfacePressure})
      : super._();

  factory _$CurrentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentEntityImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final double temperature;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final double windSpeed;
  @override
  @JsonKey(name: 'wind_direction_10m')
  final double windDirection;
  @override
  @JsonKey(name: 'surface_pressure')
  final double surfacePressure;

  @override
  String toString() {
    return 'CurrentEntity(time: $time, temperature: $temperature, windSpeed: $windSpeed, windDirection: $windDirection, surfacePressure: $surfacePressure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentEntityImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.surfacePressure, surfacePressure) ||
                other.surfacePressure == surfacePressure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, windSpeed,
      windDirection, surfacePressure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentEntityImplCopyWith<_$CurrentEntityImpl> get copyWith =>
      __$$CurrentEntityImplCopyWithImpl<_$CurrentEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentEntityImplToJson(
      this,
    );
  }
}

abstract class _CurrentEntity extends CurrentEntity {
  const factory _CurrentEntity(
      {required final String time,
      @JsonKey(name: 'temperature_2m') required final double temperature,
      @JsonKey(name: 'wind_speed_10m') required final double windSpeed,
      @JsonKey(name: 'wind_direction_10m') required final double windDirection,
      @JsonKey(name: 'surface_pressure')
      required final double surfacePressure}) = _$CurrentEntityImpl;
  const _CurrentEntity._() : super._();

  factory _CurrentEntity.fromJson(Map<String, dynamic> json) =
      _$CurrentEntityImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  double get temperature;
  @override
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed;
  @override
  @JsonKey(name: 'wind_direction_10m')
  double get windDirection;
  @override
  @JsonKey(name: 'surface_pressure')
  double get surfacePressure;
  @override
  @JsonKey(ignore: true)
  _$$CurrentEntityImplCopyWith<_$CurrentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
