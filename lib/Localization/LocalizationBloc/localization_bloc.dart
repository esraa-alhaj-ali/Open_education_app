import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/cupertino.dart';
import 'package:open_Education/Localization/LocalizationBloc/app_local_enum.dart';

import '../CashLanguage.dart';
part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  Locale? locale;
  CachedLanguage cash = CachedLanguage();
  // AppLocalIndex appLocalIndex = AppLocalIndex.en;
  LocalizationBloc() : super(LocalizationInitial()) {
    on<LocalizationEvent>((event, emit) async {
      if (event is OpeningAppLanguageEvent) {
        emit(LocalizationLoadingState());
        final result = await cash.getCachedLanguage();
        result.fold((failure) {
          locale = const Locale(
            'en',
          );
          // appLocalIndex = AppLocalIndex.ar;
          emit(LocalizationSuccessState(
            locale: locale!,
          ));
        }, (locale) {
          this.locale = locale;
          // if (locale == const Locale('ar')) {
          //   appLocalIndex = AppLocalIndex.ar;
          // } else if (locale == const Locale('en')) {
          //   appLocalIndex = AppLocalIndex.en;
          // } else {
          //   appLocalIndex = AppLocalIndex.cu;
          // }
          emit(LocalizationSuccessState(
            locale: locale,
          ));
        });
      } else if (event is ChangeLanguageEvent) {
        emit(LocalizationLoadingState());
        locale = event.locale;
        // if (locale == const Locale('ar')) {
        //   appLocalIndex = AppLocalIndex.ar;
        // } else if (locale == const Locale('en')) {
        //   appLocalIndex = AppLocalIndex.en;
        // } else {
        //   appLocalIndex = AppLocalIndex.cu;
        // }
        cash.cacheLanguage(locale!);
        emit(LocalizationSuccessState(
          locale: locale!,
        ));
      }
    });
  }
}

class LocaleChangeLanguage extends Cubit<LocaleChangeLanguageState> {
  AppLocalIndex appLocalIndex = AppLocalIndex.en;

  LocaleChangeLanguage() : super(LocaleChangeLanguageState());

  changeLanguage(AppLocalIndex index) {
    appLocalIndex = index;
    emit(LocaleChangeLanguageState());
  }
}
