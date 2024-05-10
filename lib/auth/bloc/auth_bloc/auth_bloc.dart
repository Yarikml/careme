import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../../locator_service.dart';
import '../../logic/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  Placemark? get location =>
      mapOrNull(authorized: (authorizedState) => authorizedState.location);

  String? get number => mapOrNull(
        acceptingNumber: (acceptingNumberState) => acceptingNumberState.number,
        numberAccepted: (numberAcceptedState) => numberAcceptedState.number,
        numberVerification: (numberVerificationState) =>
            numberVerificationState.number,
        numberVerified: (numberVerifiedState) => numberVerifiedState.number,
      );

  const factory AuthState.initial() = _InitialAuthState;
  const factory AuthState.noTokens() = _NoTokensAuthState;

  const factory AuthState.acceptingNumber({
    required final String number,
  }) = _AcceptingNumberAuthState;
  const factory AuthState.numberAccepted({
    required final String number,
  }) = _NumberAcceptedAuthState;
  const factory AuthState.numberVerification({
    required final String number,
  }) = _NumberVerificationAuthState;
  const factory AuthState.numberVerified({
    required final String number,
  }) = _NumberVerifiedAuthState;
  const factory AuthState.authorized({
    required final Placemark location,
    required final Position position,
  }) = _AuthorizedAuthState;
  const factory AuthState.notAuthorized() = _NotAuthorizedAuthState;
  const factory AuthState.error({
    final String? number,
    @Default('Неопознанная ошибка') final String message,
  }) = _ErrorAuthState;
}

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.requestCodeForRegistration({
    required final String phone,
  }) = _RequestCodeForRegistrationAuthEvent;

  const factory AuthEvent.requestCodeForLogin({
    required final String phone,
  }) = _RequestCodeForLoginAuthEvent;

  const factory AuthEvent.verifyCode({
    required final String code,
  }) = _VerifyCodeAuthEvent;
  const factory AuthEvent.hasToken() = _HasTokenAuthEvent;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required final IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emitter) => event.map<Future<void>>(
        requestCodeForRegistration: (event) =>
            _requestCodeForRegistration(event, emitter),
        verifyCode: (event) => _verifyCode(event, emitter),
        hasToken: (event) => _hasToken(event, emitter),
        requestCodeForLogin: (event) => _requestCodeForLogin(event, emitter),
      ),
    );
  }

  final IAuthRepository _authRepository;

  Future<void> _requestCodeForRegistration(
    _RequestCodeForRegistrationAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    try {
      emitter(
        AuthState.acceptingNumber(
          number: event.phone,
        ),
      );
      await _authRepository.registerUser(
          phone:
              int.parse(event.phone.replaceAll(' ', '').replaceAll('+', '')));
      emitter(
        AuthState.numberAccepted(
          number: state.number!,
        ),
      );
    } on Object {
      emitter(AuthState.error(
        message: '',
      ));
      rethrow;
    }
  }

  Future<void> _requestCodeForLogin(
    _RequestCodeForLoginAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    try {
      emitter(
        AuthState.acceptingNumber(
          number: event.phone,
        ),
      );
      await _authRepository.loginUser(
          phone:
              int.parse(event.phone.replaceAll(' ', '').replaceAll('+', '')));
      emitter(
        AuthState.numberAccepted(
          number: state.number!,
        ),
      );
    } on Object {
      emitter(AuthState.error(
        message: '',
      ));
      rethrow;
    }
  }

  Future<void> _verifyCode(
    _VerifyCodeAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    try {
      emitter(
        AuthState.numberVerification(
          number: state.number!,
        ),
      );
      final tokens = await _authRepository.verifyPhoneNumber(
        phone: int.parse(state.number!.replaceAll(' ', '').replaceAll('+', '')),
        code: event.code,
      );
      await _authRepository.writeTokensToCache(token: tokens);
      final Position currentPosition = await _determinePosition();
      List<Placemark> placemarks = await placemarkFromCoordinates(
        currentPosition.latitude,
        currentPosition.longitude,
      );
      sl<Dio>().interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            options.headers.addAll(
              {
                'Authorization': 'Bearer ${tokens.access}',
              },
            );
            return handler.next(options);
          },
        ),
      );
      await _authRepository.getUserData();
      emitter(
        AuthState.authorized(
          location: placemarks.first,
          position: currentPosition,
        ),
      );
    } on Object {
      emitter(AuthState.error(
        message: '',
      ));
      rethrow;
    }
  }

  Future<void> _hasToken(
    _HasTokenAuthEvent event,
    Emitter<AuthState> emitter,
  ) async {
    try {
      final tokens = await _authRepository.getTokensFromCache();
      if (tokens != null) {
        log(tokens.access.toString());

        final Position currentPosition = await _determinePosition();
        List<Placemark> placemarks = await placemarkFromCoordinates(
          currentPosition.latitude,
          currentPosition.longitude,
        );
        sl<Dio>().interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              options.headers.addAll(
                {
                  'Authorization': 'Bearer ${tokens.access}',
                },
              );
              return handler.next(options);
            },
          ),
        );
        await _authRepository.getUserData();
        emitter(
          AuthState.authorized(
            location: placemarks.first,
            position: currentPosition,
          ),
        );
      } else {
        emitter(AuthState.noTokens());
      }
    } on Object {
      emitter(AuthState.error(
        message: '',
      ));
      rethrow;
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
