import 'package:careme24/auth/logic/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_bloc.freezed.dart';

@freezed
class SearchUserState with _$SearchUserState {
  const SearchUserState._();

  const factory SearchUserState.initial() = _InitialSearchUserState;
  const factory SearchUserState.loading() = _LoadingSearchUserState;
  const factory SearchUserState.success() = _SuccessSearchUserState;
  const factory SearchUserState.error({
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorSearchUserState;
}

@freezed
class SearchUserEvent with _$SearchUserEvent {
  const SearchUserEvent._();

  const factory SearchUserEvent.searchUserByPhone({
    required final int phone,
  }) = _SearchUserByPhoneSearchUserEvent;
}

class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  SearchUserBloc({
    required final IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SearchUserState.initial()) {
    on<SearchUserEvent>(
      (event, emitter) => event.map<Future<void>>(
        searchUserByPhone: (event) => _searchUserByPhone(event, emitter),
      ),
    );
  }
  final IAuthRepository _authRepository;

  Future<void> _searchUserByPhone(
    _SearchUserByPhoneSearchUserEvent event,
    Emitter<SearchUserState> emitter,
  ) async {
    try {
      await _authRepository.searchUserByPhone(phone: event.phone);
    } on Object {
      emitter(SearchUserState.error(
        message: 'Error',
      ));
      rethrow;
    }
  }
}
