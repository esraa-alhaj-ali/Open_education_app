// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:open_Education/Localization/Failure/AppError.dart';
import 'package:open_Education/Localization/Failure/Failure.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CachedLanguage {
  cacheLanguage(Locale newLocale) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('language', newLocale.languageCode);
  }

  Future<Either<Failure, Locale>> getCachedLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final language = sharedPreferences.getString('language');//'en'; // 
    if (language != null) {
      return right(Locale(language));
    } else {
      return left(EmptyCashedLanguageFailure(
          error: AppError(
              content: "No cached language",
              number: 3,
              content_en: 'لا يوجد لغة مسبقة')));
    }
  }
}
