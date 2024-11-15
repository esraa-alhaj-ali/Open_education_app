// ignore_for_file: must_be_immutable

part of 'localization_bloc.dart';

abstract class LocalizationState extends Equatable {
  const LocalizationState();
}

class LocalizationInitial extends LocalizationState {
  @override
  List<Object> get props => [];
}

class LocalizationLoadingState extends LocalizationState {
  @override
  List<Object> get props => [];
}

class LocalizationSuccessState extends LocalizationState {
  Locale locale;
  // AppLocalIndex localeIndex;
  LocalizationSuccessState({
    required this.locale,
  });

  @override
  List<Object?> get props => [locale];
}

class LocaleChangeLanguageState {}
