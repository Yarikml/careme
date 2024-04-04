import 'dart:developer';

import 'package:careme24/core/app_export.dart';
import 'package:careme24/dangerous_icons/logic/repositories/dangerous_icons_repository.dart';
import 'package:careme24/dangerous_icons/model/forecast_info_entity/forecast_info_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'forecast_bloc.freezed.dart';

@freezed
class ForecastState with _$ForecastState {
  const ForecastState._();

  const factory ForecastState.initial({
    @Default(null) final ForecastInfoEntity? forecast,
  }) = _InitialForecastState;
  const factory ForecastState.loading({
    required final ForecastInfoEntity? forecast,
  }) = _LoadingForecastState;
  const factory ForecastState.success({
    required final ForecastInfoEntity forecast,
  }) = _SuccessForecastState;
  const factory ForecastState.error({
    required final ForecastInfoEntity? forecast,
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorForecastState;
}

@freezed
class ForecastEvent with _$ForecastEvent {
  const ForecastEvent._();

  const factory ForecastEvent.getForecastInfo({
    required final double lat,
    required final double lng,
  }) = _GetForecastInfoForecastEvent;
}

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  ForecastBloc({
    required final IDangerousIconsRepository dangerousIconsRepository,
  })  : _dangerousIconsRepository = dangerousIconsRepository,
        super(const ForecastState.initial()) {
    on<ForecastEvent>(
      (event, emitter) => event.map<Future<void>>(
        getForecastInfo: (event) => _getForecastInfo(event, emitter),
      ),
    );

    final startDateTime =
        DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1));
    final endDateTime = startDateTime.add(Duration(days: 6));
    log(startDateTime.toString());
    log(endDateTime.toString());
    _startDate = DateFormat('yyyy-MM-dd').format(startDateTime);
    _endDate = DateFormat('yyyy-MM-dd').format(endDateTime);
  }

  final IDangerousIconsRepository _dangerousIconsRepository;

  late final String _startDate;
  late final String _endDate;

  Future<void> _getForecastInfo(
    _GetForecastInfoForecastEvent event,
    Emitter<ForecastState> emitter,
  ) async {
    try {
      emitter(ForecastState.loading(forecast: state.forecast));
      final forecast = await _dangerousIconsRepository.getForecastInfo(
        lat: event.lat,
        lng: event.lng,
        startDate: _startDate,
        endDate: _endDate,
      );
      emitter(
        ForecastState.success(
          forecast: forecast,
        ),
      );
    } on Object {
      emitter(
        ForecastState.error(forecast: state.forecast),
      );
      rethrow;
    }
  }
}
