// ignore_for_file: must_be_immutable, file_names

import 'package:equatable/equatable.dart';

import 'AppError.dart';

abstract class Failure extends Equatable {
  Failure({required this.error});
  AppError? error;
}

class LogInFailure extends Failure {
  LogInFailure({required super.error});

  @override
  List<Object?> get props => [];
}

class UnExpectedFailure extends Failure {
  UnExpectedFailure({required super.error});

  @override
  List<Object?> get props => [];
}

class EmptyCashedLanguageFailure extends Failure {
  EmptyCashedLanguageFailure({required super.error});

  @override
  List<Object?> get props => [];
}
