import 'package:dio/dio.dart';

import '../../../core/constants/constants.dart';

abstract interface class IMedicalCardDatasource {
  Future<void> getMedicalCards();
}

class MedicalCardDatasource implements IMedicalCardDatasource {
  MedicalCardDatasource({
    required this.client,
  });

  final Dio client;

  @override
  Future<void> getMedicalCards() async {
    try {
      await client.get('${Constants.kApiDefaultUrl}/cards/all');
    } on Object {
      rethrow;
    }
  }
}
