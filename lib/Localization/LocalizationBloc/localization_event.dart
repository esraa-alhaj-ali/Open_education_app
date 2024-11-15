// ignore_for_file: must_be_immutable

part of 'localization_bloc.dart';

abstract class LocalizationEvent extends Equatable {
  const LocalizationEvent();
}

class OpeningAppLanguageEvent extends LocalizationEvent {
  @override
  List<Object?> get props => [];
}

class ChangeLanguageEvent extends LocalizationEvent {
  ChangeLanguageEvent({required this.locale, required this.localeIndex});
  Locale locale;
  AppLocalIndex localeIndex;
  @override
  List<Object?> get props => [];
}
