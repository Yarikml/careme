import 'package:careme24/calls_page/model/contact_entity/contact_entity.dart';
import 'package:dio/dio.dart';

import '../../../core/constants/constants.dart';

abstract interface class ICallsRemoteDatasource {
  Future<List<ContactEntity>> getContactsFromMe();


}

class CallsRemoteDatasource implements ICallsRemoteDatasource {
  final Dio client;

  CallsRemoteDatasource({
    required this.client,
  });

  @override
  Future<List<ContactEntity>> getContactsFromMe() async {
    try {
      final response =
          await client.get('${Constants.kApiDefaultUrl}/contacts/mine');
      return (response.data as List)
          .map((item) => ContactEntity.fromJson(item))
          .toList();
    } on Object {
      rethrow;
    }
  }
}
