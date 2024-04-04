import 'package:careme24/core/exceptions/app_exception.dart';

class UnknownException implements AppException {
  String get message => "Unknown";
}