// ignore_for_file: file_names, camel_case_types

import 'AppError.dart';

class AppException implements Exception {
  AppException({required this.error});
  AppError error;
}

class UnExpectedError extends AppException {
  UnExpectedError({required super.error});
}

class LogInException extends AppException {
  LogInException({required super.error});
}

class QuestionException extends AppException {
  QuestionException({required super.error});
}

class OTP_Exception extends AppException {
  OTP_Exception({required super.error});
}

class ResetPasswordException extends AppException {
  ResetPasswordException({required super.error});
}

class ResetPinException extends AppException {
  ResetPinException({required super.error});
}

class CheckBalanceException extends AppException {
  CheckBalanceException({required super.error});
}
