// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastInfoEntity _$ForecastInfoEntityFromJson(Map<String, dynamic> json) {
  return _ForecastInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ForecastInfoEntity {
  CurrentEntity get current => throw _privateConstructorUsedError;
  HourlyEntity get hourly => throw _privateConstructorUsedError;
  DailyEntity get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastInfoEntityCopyWith<ForecastInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastInfoEntityCopyWith<$Res> {
  factory $ForecastInfoEntityCopyWith(
          ForecastInfoEntity value, $Res Function(ForecastInfoEntity) then) =
      _$ForecastInfoEntityCopyWithImpl<$Res, ForecastInfoEntity>;
  @useResult
  $Res call({CurrentEntity current, HourlyEntity hourly, DailyEntity daily});

  $CurrentEntityCopyWith<$Res> get current;
  $HourlyEntityCopyWith<$Res> get hourly;
  $DailyEntityCopyWith<$Res> get daily;
}

/// @nodoc
class _$ForecastInfoEntityCopyWithImpl<$Res, $Val extends ForecastInfoEntity>
    implements $ForecastInfoEntityCopyWith<$Res> {
  _$ForecastInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentEntity,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyEntity,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentEntityCopyWith<$Res> get current {
    return $CurrentEntityCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyEntityCopyWith<$Res> get hourly {
    return $HourlyEntityCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyEntityCopyWith<$Res> get daily {
    return $DailyEntityCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastInfoEntityImplCopyWith<$Res>
    implements $ForecastInfoEntityCopyWith<$Res> {
  factory _$$ForecastInfoEntityImplCopyWith(_$ForecastInfoEntityImpl value,
          $Res Function(_$ForecastInfoEntityImpl) then) =
      __$$ForecastInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrentEntity current, HourlyEntity hourly, DailyEntity daily});

  @override
  $CurrentEntityCopyWith<$Res> get current;
  @override
  $HourlyEntityCopyWith<$Res> get hourly;
  @override
  $DailyEntityCopyWith<$Res> get daily;
}

/// @nodoc
class __$$ForecastInfoEntityImplCopyWithImpl<$Res>
    extends _$ForecastInfoEntityCopyWithImpl<$Res, _$ForecastInfoEntityImpl>
    implements _$$ForecastInfoEntityImplCopyWith<$Res> {
  __$$ForecastInfoEntityImplCopyWithImpl(_$ForecastInfoEntityImpl _value,
      $Res Function(_$ForecastInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_$ForecastInfoEntityImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentEntity,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyEntity,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastInfoEntityImpl extends _ForecastInfoEntity {
  const _$ForecastInfoEntityImpl(
      {required this.current, required this.hourly, required this.daily})
      : super._();

  factory _$ForecastInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastInfoEntityImplFromJson(json);

  @override
  final CurrentEntity current;
  @override
  final HourlyEntity hourly;
  @override
  final DailyEntity daily;

  @override
  String toString() {
    return 'ForecastInfoEntity(current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastInfoEntityImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, hourly, daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastInfoEntityImplCopyWith<_$ForecastInfoEntityImpl> get copyWith =>
      __$$ForecastInfoEntityImplCopyWithImpl<_$ForecastInfoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastInfoEntityImplToJson(
      this,
    );
  }
}

abstract class _ForecastInfoEntity extends ForecastInfoEntity {
  const factory _ForecastInfoEntity(
      {required final CurrentEntity current,
      required final HourlyEntity hourly,
      required final DailyEntity daily}) = _$ForecastInfoEntityImpl;
  const _ForecastInfoEntity._() : super._();

  factory _ForecastInfoEntity.fromJson(Map<String, dynamic> json) =
      _$ForecastInfoEntityImpl.fromJson;

  @override
  CurrentEntity get current;
  @override
  HourlyEntity get hourly;
  @override
  DailyEntity get daily;
  @override
  @JsonKey(ignore: true)
  _$$ForecastInfoEntityImplCopyWith<_$ForecastInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
