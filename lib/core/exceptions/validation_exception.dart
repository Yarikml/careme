import 'package:careme24/core/exceptions/app_exception.dart';

class ValidationException implements AppException {
  String get message => "Validation Message";
}