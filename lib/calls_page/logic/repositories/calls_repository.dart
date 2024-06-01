import 'package:careme24/calls_page/logic/datasources/calls_remote_datasource.dart';

import '../../model/contact_entity/contact_entity.dart';

abstract interface class ICallsRepository {
  Future<List<ContactEntity>> getContactsFromMe();
}

class CallsRepository implements ICallsRepository {
  final ICallsRemoteDatasource callsRemoteDatasource;

  CallsRepository({
    required this.callsRemoteDatasource,
  });

  @override
  Future<List<ContactEntity>> getContactsFromMe()async {
    try {
      final calls = await callsRemoteDatasource.getContactsFromMe();
      return calls;
    } on Object {
      rethrow;
    }
  }
}
