// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastState {
  ForecastInfoEntity? get forecast => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastInfoEntity? forecast) initial,
    required TResult Function(ForecastInfoEntity? forecast) loading,
    required TResult Function(ForecastInfoEntity forecast) success,
    required TResult Function(ForecastInfoEntity? forecast, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastInfoEntity? forecast)? initial,
    TResult? Function(ForecastInfoEntity? forecast)? loading,
    TResult? Function(ForecastInfoEntity forecast)? success,
    TResult? Function(ForecastInfoEntity? forecast, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastInfoEntity? forecast)? initial,
    TResult Function(ForecastInfoEntity? forecast)? loading,
    TResult Function(ForecastInfoEntity forecast)? success,
    TResult Function(ForecastInfoEntity? forecast, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialForecastState value) initial,
    required TResult Function(_LoadingForecastState value) loading,
    required TResult Function(_SuccessForecastState value) success,
    required TResult Function(_ErrorForecastState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialForecastState value)? initial,
    TResult? Function(_LoadingForecastState value)? loading,
    TResult? Function(_SuccessForecastState value)? success,
    TResult? Function(_ErrorForecastState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialForecastState value)? initial,
    TResult Function(_LoadingForecastState value)? loading,
    TResult Function(_SuccessForecastState value)? success,
    TResult Function(_ErrorForecastState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastStateCopyWith<ForecastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastStateCopyWith<$Res> {
  factory $ForecastStateCopyWith(
          ForecastState value, $Res Function(ForecastState) then) =
      _$ForecastStateCopyWithImpl<$Res, ForecastState>;
  @useResult
  $Res call({ForecastInfoEntity forecast});

  $ForecastInfoEntityCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$ForecastStateCopyWithImpl<$Res, $Val extends ForecastState>
    implements $ForecastStateCopyWith<$Res> {
  _$ForecastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      forecast: null == forecast
          ? _value.forecast!
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastInfoEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastInfoEntityCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastInfoEntityCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialForecastStateImplCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$InitialForecastStateImplCopyWith(_$InitialForecastStateImpl value,
          $Res Function(_$InitialForecastStateImpl) then) =
      __$$InitialForecastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastInfoEntity? forecast});

  @override
  $ForecastInfoEntityCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$InitialForecastStateImplCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$InitialForecastStateImpl>
    implements _$$InitialForecastStateImplCopyWith<$Res> {
  __$$InitialForecastStateImplCopyWithImpl(_$InitialForecastStateImpl _value,
      $Res Function(_$InitialForecastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_$InitialForecastStateImpl(
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastInfoEntity?,
    ));
  }
}

/// @nodoc

class _$InitialForecastStateImpl extends _InitialForecastState {
  const _$InitialForecastStateImpl({this.forecast = null}) : super._();

  @override
  @JsonKey()
  final ForecastInfoEntity? forecast;

  @override
  String toString() {
    return 'ForecastState.initial(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialForecastStateImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialForecastStateImplCopyWith<_$InitialForecastStateImpl>
      get copyWith =>
          __$$InitialForecastStateImplCopyWithImpl<_$InitialForecastStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastInfoEntity? forecast) initial,
    required TResult Function(ForecastInfoEntity? forecast) loading,
    required TResult Function(ForecastInfoEntity forecast) success,
    required TResult Function(ForecastInfoEntity? forecast, String message)
        error,
  }) {
    return initial(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastInfoEntity? forecast)? initial,
    TResult? Function(ForecastInfoEntity? forecast)? loading,
    TResult? Function(ForecastInfoEntity forecast)? success,
    TResult? Function(ForecastInfoEntity? forecast, String message)? error,
  }) {
    return initial?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastInfoEntity? forecast)? initial,
    TResult Function(ForecastInfoEntity? forecast)? loading,
    TResult Function(ForecastInfoEntity forecast)? success,
    TResult Function(ForecastInfoEntity? forecast, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialForecastState value) initial,
    required TResult Function(_LoadingForecastState value) loading,
    required TResult Function(_SuccessForecastState value) success,
    required TResult Function(_ErrorForecastState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialForecastState value)? initial,
    TResult? Function(_LoadingForecastState value)? loading,
    TResult? Function(_SuccessForecastState value)? success,
    TResult? Function(_ErrorForecastState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialForecastState value)? initial,
    TResult Function(_LoadingForecastState value)? loading,
    TResult Function(_SuccessForecastState value)? success,
    TResult Function(_ErrorForecastState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialForecastState extends ForecastState {
  const factory _InitialForecastState({final ForecastInfoEntity? forecast}) =
      _$InitialForecastStateImpl;
  const _InitialForecastState._() : super._();

  @override
  ForecastInfoEntity? get forecast;
  @override
  @JsonKey(ignore: true)
  _$$InitialForecastStateImplCopyWith<_$InitialForecastStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingForecastStateImplCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$LoadingForecastStateImplCopyWith(_$LoadingForecastStateImpl value,
          $Res Function(_$LoadingForecastStateImpl) then) =
      __$$LoadingForecastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastInfoEntity? forecast});

  @override
  $ForecastInfoEntityCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$LoadingForecastStateImplCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$LoadingForecastStateImpl>
    implements _$$LoadingForecastStateImplCopyWith<$Res> {
  __$$LoadingForecastStateImplCopyWithImpl(_$LoadingForecastStateImpl _value,
      $Res Function(_$LoadingForecastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = freezed,
  }) {
    return _then(_$LoadingForecastStateImpl(
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastInfoEntity?,
    ));
  }
}

/// @nodoc

class _$LoadingForecastStateImpl extends _LoadingForecastState {
  const _$LoadingForecastStateImpl({required this.forecast}) : super._();

  @override
  final ForecastInfoEntity? forecast;

  @override
  String toString() {
    return 'ForecastState.loading(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingForecastStateImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingForecastStateImplCopyWith<_$LoadingForecastStateImpl>
      get copyWith =>
          __$$LoadingForecastStateImplCopyWithImpl<_$LoadingForecastStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastInfoEntity? forecast) initial,
    required TResult Function(ForecastInfoEntity? forecast) loading,
    required TResult Function(ForecastInfoEntity forecast) success,
    required TResult Function(ForecastInfoEntity? forecast, String message)
        error,
  }) {
    return loading(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastInfoEntity? forecast)? initial,
    TResult? Function(ForecastInfoEntity? forecast)? loading,
    TResult? Function(ForecastInfoEntity forecast)? success,
    TResult? Function(ForecastInfoEntity? forecast, String message)? error,
  }) {
    return loading?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastInfoEntity? forecast)? initial,
    TResult Function(ForecastInfoEntity? forecast)? loading,
    TResult Function(ForecastInfoEntity forecast)? success,
    TResult Function(ForecastInfoEntity? forecast, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialForecastState value) initial,
    required TResult Function(_LoadingForecastState value) loading,
    required TResult Function(_SuccessForecastState value) success,
    required TResult Function(_ErrorForecastState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialForecastState value)? initial,
    TResult? Function(_LoadingForecastState value)? loading,
    TResult? Function(_SuccessForecastState value)? success,
    TResult? Function(_ErrorForecastState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialForecastState value)? initial,
    TResult Function(_LoadingForecastState value)? loading,
    TResult Function(_SuccessForecastState value)? success,
    TResult Function(_ErrorForecastState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingForecastState extends ForecastState {
  const factory _LoadingForecastState(
          {required final ForecastInfoEntity? forecast}) =
      _$LoadingForecastStateImpl;
  const _LoadingForecastState._() : super._();

  @override
  ForecastInfoEntity? get forecast;
  @override
  @JsonKey(ignore: true)
  _$$LoadingForecastStateImplCopyWith<_$LoadingForecastStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessForecastStateImplCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$SuccessForecastStateImplCopyWith(_$SuccessForecastStateImpl value,
          $Res Function(_$SuccessForecastStateImpl) then) =
      __$$SuccessForecastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastInfoEntity forecast});

  @override
  $ForecastInfoEntityCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$SuccessForecastStateImplCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$SuccessForecastStateImpl>
    implements _$$SuccessForecastStateImplCopyWith<$Res> {
  __$$SuccessForecastStateImplCopyWithImpl(_$SuccessForecastStateImpl _value,
      $Res Function(_$SuccessForecastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_$SuccessForecastStateImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastInfoEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastInfoEntityCopyWith<$Res> get forecast {
    return $ForecastInfoEntityCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc

class _$SuccessForecastStateImpl extends _SuccessForecastState {
  const _$SuccessForecastStateImpl({required this.forecast}) : super._();

  @override
  final ForecastInfoEntity forecast;

  @override
  String toString() {
    return 'ForecastState.success(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessForecastStateImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessForecastStateImplCopyWith<_$SuccessForecastStateImpl>
      get copyWith =>
          __$$SuccessForecastStateImplCopyWithImpl<_$SuccessForecastStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastInfoEntity? forecast) initial,
    required TResult Function(ForecastInfoEntity? forecast) loading,
    required TResult Function(ForecastInfoEntity forecast) success,
    required TResult Function(ForecastInfoEntity? forecast, String message)
        error,
  }) {
    return success(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastInfoEntity? forecast)? initial,
    TResult? Function(ForecastInfoEntity? forecast)? loading,
    TResult? Function(ForecastInfoEntity forecast)? success,
    TResult? Function(ForecastInfoEntity? forecast, String message)? error,
  }) {
    return success?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastInfoEntity? forecast)? initial,
    TResult Function(ForecastInfoEntity? forecast)? loading,
    TResult Function(ForecastInfoEntity forecast)? success,
    TResult Function(ForecastInfoEntity? forecast, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialForecastState value) initial,
    required TResult Function(_LoadingForecastState value) loading,
    required TResult Function(_SuccessForecastState value) success,
    required TResult Function(_ErrorForecastState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialForecastState value)? initial,
    TResult? Function(_LoadingForecastState value)? loading,
    TResult? Function(_SuccessForecastState value)? success,
    TResult? Function(_ErrorForecastState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialForecastState value)? initial,
    TResult Function(_LoadingForecastState value)? loading,
    TResult Function(_SuccessForecastState value)? success,
    TResult Function(_ErrorForecastState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessForecastState extends ForecastState {
  const factory _SuccessForecastState(
          {required final ForecastInfoEntity forecast}) =
      _$SuccessForecastStateImpl;
  const _SuccessForecastState._() : super._();

  @override
  ForecastInfoEntity get forecast;
  @override
  @JsonKey(ignore: true)
  _$$SuccessForecastStateImplCopyWith<_$SuccessForecastStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorForecastStateImplCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory _$$ErrorForecastStateImplCopyWith(_$ErrorForecastStateImpl value,
          $Res Function(_$ErrorForecastStateImpl) then) =
      __$$ErrorForecastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastInfoEntity? forecast, String message});

  @override
  $ForecastInfoEntityCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$$ErrorForecastStateImplCopyWithImpl<$Res>
    extends _$ForecastStateCopyWithImpl<$Res, _$ErrorForecastStateImpl>
    implements _$$ErrorForecastStateImplCopyWith<$Res> {
  __$$ErrorForecastStateImplCopyWithImpl(_$ErrorForecastStateImpl _value,
      $Res Function(_$ErrorForecastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = freezed,
    Object? message = null,
  }) {
    return _then(_$ErrorForecastStateImpl(
      forecast: freezed == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastInfoEntity?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorForecastStateImpl extends _ErrorForecastState {
  const _$ErrorForecastStateImpl(
      {required this.forecast, this.message = 'Неопознанная ошибка'})
      : super._();

  @override
  final ForecastInfoEntity? forecast;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ForecastState.error(forecast: $forecast, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorForecastStateImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorForecastStateImplCopyWith<_$ErrorForecastStateImpl> get copyWith =>
      __$$ErrorForecastStateImplCopyWithImpl<_$ErrorForecastStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForecastInfoEntity? forecast) initial,
    required TResult Function(ForecastInfoEntity? forecast) loading,
    required TResult Function(ForecastInfoEntity forecast) success,
    required TResult Function(ForecastInfoEntity? forecast, String message)
        error,
  }) {
    return error(forecast, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForecastInfoEntity? forecast)? initial,
    TResult? Function(ForecastInfoEntity? forecast)? loading,
    TResult? Function(ForecastInfoEntity forecast)? success,
    TResult? Function(ForecastInfoEntity? forecast, String message)? error,
  }) {
    return error?.call(forecast, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForecastInfoEntity? forecast)? initial,
    TResult Function(ForecastInfoEntity? forecast)? loading,
    TResult Function(ForecastInfoEntity forecast)? success,
    TResult Function(ForecastInfoEntity? forecast, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(forecast, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialForecastState value) initial,
    required TResult Function(_LoadingForecastState value) loading,
    required TResult Function(_SuccessForecastState value) success,
    required TResult Function(_ErrorForecastState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialForecastState value)? initial,
    TResult? Function(_LoadingForecastState value)? loading,
    TResult? Function(_SuccessForecastState value)? success,
    TResult? Function(_ErrorForecastState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialForecastState value)? initial,
    TResult Function(_LoadingForecastState value)? loading,
    TResult Function(_SuccessForecastState value)? success,
    TResult Function(_ErrorForecastState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorForecastState extends ForecastState {
  const factory _ErrorForecastState(
      {required final ForecastInfoEntity? forecast,
      final String message}) = _$ErrorForecastStateImpl;
  const _ErrorForecastState._() : super._();

  @override
  ForecastInfoEntity? get forecast;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorForecastStateImplCopyWith<_$ErrorForecastStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForecastEvent {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) getForecastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? getForecastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? getForecastInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetForecastInfoForecastEvent value)
        getForecastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetForecastInfoForecastEvent value)? getForecastInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetForecastInfoForecastEvent value)? getForecastInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastEventCopyWith<ForecastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEventCopyWith<$Res> {
  factory $ForecastEventCopyWith(
          ForecastEvent value, $Res Function(ForecastEvent) then) =
      _$ForecastEventCopyWithImpl<$Res, ForecastEvent>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$ForecastEventCopyWithImpl<$Res, $Val extends ForecastEvent>
    implements $ForecastEventCopyWith<$Res> {
  _$ForecastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetForecastInfoForecastEventImplCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory _$$GetForecastInfoForecastEventImplCopyWith(
          _$GetForecastInfoForecastEventImpl value,
          $Res Function(_$GetForecastInfoForecastEventImpl) then) =
      __$$GetForecastInfoForecastEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$GetForecastInfoForecastEventImplCopyWithImpl<$Res>
    extends _$ForecastEventCopyWithImpl<$Res,
        _$GetForecastInfoForecastEventImpl>
    implements _$$GetForecastInfoForecastEventImplCopyWith<$Res> {
  __$$GetForecastInfoForecastEventImplCopyWithImpl(
      _$GetForecastInfoForecastEventImpl _value,
      $Res Function(_$GetForecastInfoForecastEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$GetForecastInfoForecastEventImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GetForecastInfoForecastEventImpl extends _GetForecastInfoForecastEvent {
  const _$GetForecastInfoForecastEventImpl(
      {required this.lat, required this.lng})
      : super._();

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'ForecastEvent.getForecastInfo(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForecastInfoForecastEventImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForecastInfoForecastEventImplCopyWith<
          _$GetForecastInfoForecastEventImpl>
      get copyWith => __$$GetForecastInfoForecastEventImplCopyWithImpl<
          _$GetForecastInfoForecastEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) getForecastInfo,
  }) {
    return getForecastInfo(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? getForecastInfo,
  }) {
    return getForecastInfo?.call(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? getForecastInfo,
    required TResult orElse(),
  }) {
    if (getForecastInfo != null) {
      return getForecastInfo(lat, lng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetForecastInfoForecastEvent value)
        getForecastInfo,
  }) {
    return getForecastInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetForecastInfoForecastEvent value)? getForecastInfo,
  }) {
    return getForecastInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetForecastInfoForecastEvent value)? getForecastInfo,
    required TResult orElse(),
  }) {
    if (getForecastInfo != null) {
      return getForecastInfo(this);
    }
    return orElse();
  }
}

abstract class _GetForecastInfoForecastEvent extends ForecastEvent {
  const factory _GetForecastInfoForecastEvent(
      {required final double lat,
      required final double lng}) = _$GetForecastInfoForecastEventImpl;
  const _GetForecastInfoForecastEvent._() : super._();

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$GetForecastInfoForecastEventImplCopyWith<
          _$GetForecastInfoForecastEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
