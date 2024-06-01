import 'dart:developer';

import 'package:dio/dio.dart';

import '../../../core/constants/constants.dart';
import '../../model/token_entity/token_entity.dart';

abstract class IAuthRemoteDatasource {
  Future<void> registerUser({
    required final int phone,
  });

  Future<void> loginUser({
    required final int phone,
  });

  Future<TokenEntity> verifyPhoneNumber({
    required final int phone,
    required final String code,
  });

  Future<void> getUserData();

  Future<void> searchUserByPhone({
    required final int phone,
  });
}

class AuthRemoteDatasource implements IAuthRemoteDatasource {
  AuthRemoteDatasource({
    required this.client,
  });

  final Dio client;

  @override
  Future<void> registerUser({
    required int phone,
  }) async {
    try {
      final response = await client.post(
        '${Constants.kApiDefaultUrl}/auth/register',
        data: {
          'phone': phone,
        },
      );
      log(response.data.toString());
    } on Object {
      rethrow;
    }
  }

  @override
  Future<TokenEntity> verifyPhoneNumber({
    required int phone,
    required String code,
  }) async {
    try {
      final response = await client.post(
        '${Constants.kApiDefaultUrl}/auth/verified?phone=$phone&otp=1111',
      );
      return TokenEntity.fromJson(response.data);
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> loginUser({
    required int phone,
  }) async {
    try {
      await client.post(
        '${Constants.kApiDefaultUrl}/auth/login',
        data: {
          'phone': phone,
        },
      );
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> getUserData() async {
    try {
      await client.get(
        '${Constants.kApiDefaultUrl}/users/me',
      );
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> searchUserByPhone({
    required int phone,
  }) async {
    await client.get(
      '${Constants.kApiDefaultUrl}/users/users?phone=$phone',
    );
  }
}
