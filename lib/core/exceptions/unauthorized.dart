import 'package:careme24/core/exceptions/app_exception.dart';

class UnAuthorizedException implements AppException {
  String get message => "Unauthorized";
}