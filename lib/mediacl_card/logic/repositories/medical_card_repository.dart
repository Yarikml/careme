import 'package:careme24/mediacl_card/logic/datasources/medical_card_datasource.dart';

abstract interface class IMedicalCardRepository {
  Future<void> getMedicalCards();
}

class MedicalCardRepository implements IMedicalCardRepository {
  final IMedicalCardDatasource medicalCardDatasource;

  MedicalCardRepository({
    required this.medicalCardDatasource,
  });

  @override
  Future<void> getMedicalCards() async {
    try {
      await medicalCardDatasource.getMedicalCards();
    } on Object {
      rethrow;
    }
  }
}
