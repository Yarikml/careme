// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourlyEntity _$HourlyEntityFromJson(Map<String, dynamic> json) {
  return _HourlyEntity.fromJson(json);
}

/// @nodoc
mixin _$HourlyEntity {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction_10m')
  List<double> get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: 'surface_pressure')
  List<double> get surfacePressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'direct_radiation')
  List<double> get solarRadiation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyEntityCopyWith<HourlyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyEntityCopyWith<$Res> {
  factory $HourlyEntityCopyWith(
          HourlyEntity value, $Res Function(HourlyEntity) then) =
      _$HourlyEntityCopyWithImpl<$Res, HourlyEntity>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed,
      @JsonKey(name: 'wind_direction_10m') List<double> windDirection,
      @JsonKey(name: 'surface_pressure') List<double> surfacePressure,
      @JsonKey(name: 'direct_radiation') List<double> solarRadiation});
}

/// @nodoc
class _$HourlyEntityCopyWithImpl<$Res, $Val extends HourlyEntity>
    implements $HourlyEntityCopyWith<$Res> {
  _$HourlyEntityCopyWithImpl(this._value, this._then);

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
    Object? solarRadiation = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as List<double>,
      surfacePressure: null == surfacePressure
          ? _value.surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as List<double>,
      solarRadiation: null == solarRadiation
          ? _value.solarRadiation
          : solarRadiation // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyEntityImplCopyWith<$Res>
    implements $HourlyEntityCopyWith<$Res> {
  factory _$$HourlyEntityImplCopyWith(
          _$HourlyEntityImpl value, $Res Function(_$HourlyEntityImpl) then) =
      __$$HourlyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature,
      @JsonKey(name: 'wind_speed_10m') List<double> windSpeed,
      @JsonKey(name: 'wind_direction_10m') List<double> windDirection,
      @JsonKey(name: 'surface_pressure') List<double> surfacePressure,
      @JsonKey(name: 'direct_radiation') List<double> solarRadiation});
}

/// @nodoc
class __$$HourlyEntityImplCopyWithImpl<$Res>
    extends _$HourlyEntityCopyWithImpl<$Res, _$HourlyEntityImpl>
    implements _$$HourlyEntityImplCopyWith<$Res> {
  __$$HourlyEntityImplCopyWithImpl(
      _$HourlyEntityImpl _value, $Res Function(_$HourlyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? surfacePressure = null,
    Object? solarRadiation = null,
  }) {
    return _then(_$HourlyEntityImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature: null == temperature
          ? _value._temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeed: null == windSpeed
          ? _value._windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windDirection: null == windDirection
          ? _value._windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as List<double>,
      surfacePressure: null == surfacePressure
          ? _value._surfacePressure
          : surfacePressure // ignore: cast_nullable_to_non_nullable
              as List<double>,
      solarRadiation: null == solarRadiation
          ? _value._solarRadiation
          : solarRadiation // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyEntityImpl extends _HourlyEntity {
  const _$HourlyEntityImpl(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m') required final List<double> temperature,
      @JsonKey(name: 'wind_speed_10m') required final List<double> windSpeed,
      @JsonKey(name: 'wind_direction_10m')
      required final List<double> windDirection,
      @JsonKey(name: 'surface_pressure')
      required final List<double> surfacePressure,
      @JsonKey(name: 'direct_radiation')
      required final List<double> solarRadiation})
      : _time = time,
        _temperature = temperature,
        _windSpeed = windSpeed,
        _windDirection = windDirection,
        _surfacePressure = surfacePressure,
        _solarRadiation = solarRadiation,
        super._();

  factory _$HourlyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyEntityImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature {
    if (_temperature is EqualUnmodifiableListView) return _temperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature);
  }

  final List<double> _windSpeed;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed {
    if (_windSpeed is EqualUnmodifiableListView) return _windSpeed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeed);
  }

  final List<double> _windDirection;
  @override
  @JsonKey(name: 'wind_direction_10m')
  List<double> get windDirection {
    if (_windDirection is EqualUnmodifiableListView) return _windDirection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windDirection);
  }

  final List<double> _surfacePressure;
  @override
  @JsonKey(name: 'surface_pressure')
  List<double> get surfacePressure {
    if (_surfacePressure is EqualUnmodifiableListView) return _surfacePressure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surfacePressure);
  }

  final List<double> _solarRadiation;
  @override
  @JsonKey(name: 'direct_radiation')
  List<double> get solarRadiation {
    if (_solarRadiation is EqualUnmodifiableListView) return _solarRadiation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_solarRadiation);
  }

  @override
  String toString() {
    return 'HourlyEntity(time: $time, temperature: $temperature, windSpeed: $windSpeed, windDirection: $windDirection, surfacePressure: $surfacePressure, solarRadiation: $solarRadiation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyEntityImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature, _temperature) &&
            const DeepCollectionEquality()
                .equals(other._windSpeed, _windSpeed) &&
            const DeepCollectionEquality()
                .equals(other._windDirection, _windDirection) &&
            const DeepCollectionEquality()
                .equals(other._surfacePressure, _surfacePressure) &&
            const DeepCollectionEquality()
                .equals(other._solarRadiation, _solarRadiation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature),
      const DeepCollectionEquality().hash(_windSpeed),
      const DeepCollectionEquality().hash(_windDirection),
      const DeepCollectionEquality().hash(_surfacePressure),
      const DeepCollectionEquality().hash(_solarRadiation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyEntityImplCopyWith<_$HourlyEntityImpl> get copyWith =>
      __$$HourlyEntityImplCopyWithImpl<_$HourlyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyEntityImplToJson(
      this,
    );
  }
}

abstract class _HourlyEntity extends HourlyEntity {
  const factory _HourlyEntity(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m') required final List<double> temperature,
      @JsonKey(name: 'wind_speed_10m') required final List<double> windSpeed,
      @JsonKey(name: 'wind_direction_10m')
      required final List<double> windDirection,
      @JsonKey(name: 'surface_pressure')
      required final List<double> surfacePressure,
      @JsonKey(name: 'direct_radiation')
      required final List<double> solarRadiation}) = _$HourlyEntityImpl;
  const _HourlyEntity._() : super._();

  factory _HourlyEntity.fromJson(Map<String, dynamic> json) =
      _$HourlyEntityImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get windSpeed;
  @override
  @JsonKey(name: 'wind_direction_10m')
  List<double> get windDirection;
  @override
  @JsonKey(name: 'surface_pressure')
  List<double> get surfacePressure;
  @override
  @JsonKey(name: 'direct_radiation')
  List<double> get solarRadiation;
  @override
  @JsonKey(ignore: true)
  _$$HourlyEntityImplCopyWith<_$HourlyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
