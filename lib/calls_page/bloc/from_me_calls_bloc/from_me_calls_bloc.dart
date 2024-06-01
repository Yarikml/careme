import 'package:careme24/calls_page/logic/repositories/calls_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'from_me_calls_bloc.freezed.dart';

@freezed
class FromMeCallsState with _$FromMeCallsState {
  const FromMeCallsState._();

  const factory FromMeCallsState.initial() = _InitialFromMeCallsState;
  const factory FromMeCallsState.loading() = _LoadingFromMeCallsState;
  const factory FromMeCallsState.success() = _SuccessFromMeCallsState;
  const factory FromMeCallsState.error({
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorFromMeCallsState;
}

@freezed
class FromMeCallsEvent with _$FromMeCallsEvent {
  const FromMeCallsEvent._();

  const factory FromMeCallsEvent.getFromMeCalls() =
      _GetFromMeCallsromMeCallsEvent;
}

class FromMeCallsBloc extends Bloc<FromMeCallsEvent, FromMeCallsState> {
  FromMeCallsBloc({
    required ICallsRepository callsRepository,
  })  : _callsRepository = callsRepository,
        super(const FromMeCallsState.initial()) {
    on<FromMeCallsEvent>(
      (event, emitter) => event.map<Future<void>>(
        getFromMeCalls: (event) => _getFromMeCalls(event, emitter),
      ),
    );
  }

  final ICallsRepository _callsRepository;

  Future<void> _getFromMeCalls(
    _GetFromMeCallsromMeCallsEvent event,
    Emitter<FromMeCallsState> emitter,
  ) async {
    try {
      await _callsRepository.getContactsFromMe();
    } on Object {
      emitter(
        FromMeCallsState.error(
          message: 'Ошибка',
        ),
      );
      rethrow;
    }
  }
}
