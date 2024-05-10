import 'package:careme24/mediacl_card/logic/repositories/medical_card_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_card_bloc.freezed.dart';

@freezed
class MedicalCardState with _$MedicalCardState {
  const MedicalCardState._();

  const factory MedicalCardState.initial() = _InitialMedicalCardState;
  const factory MedicalCardState.loading() = _LoadingMedicalCardState;
  const factory MedicalCardState.success() = _SuccessMedicalCardState;
  const factory MedicalCardState.error({
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorMedicalCardState;
}

@freezed
class MedicalCardEvent with _$MedicalCardEvent {
  const MedicalCardEvent._();

  const factory MedicalCardEvent.getMedicalCards() =
      _GetMedicalCardsMedicalCardEvent;
}

class MedicalCardBloc extends Bloc<MedicalCardEvent, MedicalCardState> {
  MedicalCardBloc({
    required final IMedicalCardRepository medicalCardRepository,
  })  : _medicalCardRepository = medicalCardRepository,
        super(const MedicalCardState.initial()) {
    on<MedicalCardEvent>(
      (event, emitter) => event.map<Future<void>>(
        getMedicalCards: (event) => _getMedicalCards(event, emitter),
      ),
    );
  }

  final IMedicalCardRepository _medicalCardRepository;

  Future<void> _getMedicalCards(
    _GetMedicalCardsMedicalCardEvent event,
    Emitter<MedicalCardState> emitter,
  ) async {
    try {
      emitter(MedicalCardState.loading());
      await _medicalCardRepository.getMedicalCards();
      emitter(MedicalCardState.success());
    } on Object {
      emitter(MedicalCardState.error(
        message: 'Error',
      ));
      rethrow;
    }
  }
}
