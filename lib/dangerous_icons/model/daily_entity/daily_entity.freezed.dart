// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyEntity _$DailyEntityFromJson(Map<String, dynamic> json) {
  return _DailyEntity.fromJson(json);
}

/// @nodoc
mixin _$DailyEntity {
  @JsonKey(name: 'time')
  List<String> get dates => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperatureMaxValues => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperatureMinValues => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeedMaxValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyEntityCopyWith<DailyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyEntityCopyWith<$Res> {
  factory $DailyEntityCopyWith(
          DailyEntity value, $Res Function(DailyEntity) then) =
      _$DailyEntityCopyWithImpl<$Res, DailyEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') List<String> dates,
      @JsonKey(name: 'temperature_2m_max') List<double> temperatureMaxValues,
      @JsonKey(name: 'temperature_2m_min') List<double> temperatureMinValues,
      @JsonKey(name: 'wind_speed_10m_max') List<double> windSpeedMaxValues});
}

/// @nodoc
class _$DailyEntityCopyWithImpl<$Res, $Val extends DailyEntity>
    implements $DailyEntityCopyWith<$Res> {
  _$DailyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? temperatureMaxValues = null,
    Object? temperatureMinValues = null,
    Object? windSpeedMaxValues = null,
  }) {
    return _then(_value.copyWith(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperatureMaxValues: null == temperatureMaxValues
          ? _value.temperatureMaxValues
          : temperatureMaxValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperatureMinValues: null == temperatureMinValues
          ? _value.temperatureMinValues
          : temperatureMinValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeedMaxValues: null == windSpeedMaxValues
          ? _value.windSpeedMaxValues
          : windSpeedMaxValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyEntityImplCopyWith<$Res>
    implements $DailyEntityCopyWith<$Res> {
  factory _$$DailyEntityImplCopyWith(
          _$DailyEntityImpl value, $Res Function(_$DailyEntityImpl) then) =
      __$$DailyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') List<String> dates,
      @JsonKey(name: 'temperature_2m_max') List<double> temperatureMaxValues,
      @JsonKey(name: 'temperature_2m_min') List<double> temperatureMinValues,
      @JsonKey(name: 'wind_speed_10m_max') List<double> windSpeedMaxValues});
}

/// @nodoc
class __$$DailyEntityImplCopyWithImpl<$Res>
    extends _$DailyEntityCopyWithImpl<$Res, _$DailyEntityImpl>
    implements _$$DailyEntityImplCopyWith<$Res> {
  __$$DailyEntityImplCopyWithImpl(
      _$DailyEntityImpl _value, $Res Function(_$DailyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? temperatureMaxValues = null,
    Object? temperatureMinValues = null,
    Object? windSpeedMaxValues = null,
  }) {
    return _then(_$DailyEntityImpl(
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperatureMaxValues: null == temperatureMaxValues
          ? _value._temperatureMaxValues
          : temperatureMaxValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperatureMinValues: null == temperatureMinValues
          ? _value._temperatureMinValues
          : temperatureMinValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
      windSpeedMaxValues: null == windSpeedMaxValues
          ? _value._windSpeedMaxValues
          : windSpeedMaxValues // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyEntityImpl extends _DailyEntity {
  const _$DailyEntityImpl(
      {@JsonKey(name: 'time') required final List<String> dates,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperatureMaxValues,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperatureMinValues,
      @JsonKey(name: 'wind_speed_10m_max')
      required final List<double> windSpeedMaxValues})
      : _dates = dates,
        _temperatureMaxValues = temperatureMaxValues,
        _temperatureMinValues = temperatureMinValues,
        _windSpeedMaxValues = windSpeedMaxValues,
        super._();

  factory _$DailyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyEntityImplFromJson(json);

  final List<String> _dates;
  @override
  @JsonKey(name: 'time')
  List<String> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  final List<double> _temperatureMaxValues;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperatureMaxValues {
    if (_temperatureMaxValues is EqualUnmodifiableListView)
      return _temperatureMaxValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperatureMaxValues);
  }

  final List<double> _temperatureMinValues;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperatureMinValues {
    if (_temperatureMinValues is EqualUnmodifiableListView)
      return _temperatureMinValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperatureMinValues);
  }

  final List<double> _windSpeedMaxValues;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeedMaxValues {
    if (_windSpeedMaxValues is EqualUnmodifiableListView)
      return _windSpeedMaxValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_windSpeedMaxValues);
  }

  @override
  String toString() {
    return 'DailyEntity(dates: $dates, temperatureMaxValues: $temperatureMaxValues, temperatureMinValues: $temperatureMinValues, windSpeedMaxValues: $windSpeedMaxValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyEntityImpl &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMaxValues, _temperatureMaxValues) &&
            const DeepCollectionEquality()
                .equals(other._temperatureMinValues, _temperatureMinValues) &&
            const DeepCollectionEquality()
                .equals(other._windSpeedMaxValues, _windSpeedMaxValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dates),
      const DeepCollectionEquality().hash(_temperatureMaxValues),
      const DeepCollectionEquality().hash(_temperatureMinValues),
      const DeepCollectionEquality().hash(_windSpeedMaxValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyEntityImplCopyWith<_$DailyEntityImpl> get copyWith =>
      __$$DailyEntityImplCopyWithImpl<_$DailyEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyEntityImplToJson(
      this,
    );
  }
}

abstract class _DailyEntity extends DailyEntity {
  const factory _DailyEntity(
      {@JsonKey(name: 'time') required final List<String> dates,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperatureMaxValues,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperatureMinValues,
      @JsonKey(name: 'wind_speed_10m_max')
      required final List<double> windSpeedMaxValues}) = _$DailyEntityImpl;
  const _DailyEntity._() : super._();

  factory _DailyEntity.fromJson(Map<String, dynamic> json) =
      _$DailyEntityImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  List<String> get dates;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperatureMaxValues;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperatureMinValues;
  @override
  @JsonKey(name: 'wind_speed_10m_max')
  List<double> get windSpeedMaxValues;
  @override
  @JsonKey(ignore: true)
  _$$DailyEntityImplCopyWith<_$DailyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
