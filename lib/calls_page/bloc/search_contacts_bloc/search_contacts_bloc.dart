import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_contacts_bloc.freezed.dart';

@freezed
class SearchContactsState with _$SearchContactsState {
  const SearchContactsState._();

  const factory SearchContactsState.initial() = _InitialSearchContactsState;
  const factory SearchContactsState.loading() = _LoadingSearchContactsState;
  const factory SearchContactsState.success() = _SuccessSearchContactsState;
  const factory SearchContactsState.error({
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorSearchContactsState;
}

@freezed
class SearchContactsEvent with _$SearchContactsEvent {
  const SearchContactsEvent._();

  const factory SearchContactsEvent.searchContactByPhone() =
      _SearchContactByPhoneSearchContactsEvent;
}

class SearchContactsBloc
    extends Bloc<SearchContactsEvent, SearchContactsState> {
  SearchContactsBloc() : super(const SearchContactsState.initial()) {
    on<SearchContactsEvent>(
      (event, emitter) => event.map<Future<void>>(
        searchContactByPhone: (event) => _searchContactByPhone(event, emitter),
      ),
    );
  }
  Future<void> _searchContactByPhone(
    _SearchContactByPhoneSearchContactsEvent event,
    Emitter<SearchContactsState> emitter,
  ) async {
    try {} on Object {
      emitter(SearchContactsState.error(
        message: 'Ошибка',
      ));
      rethrow;
    }
  }
}
