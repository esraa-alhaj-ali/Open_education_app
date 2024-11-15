// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Localization/LocalizationBloc/app_local_enum.dart';
import 'package:open_Education/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:sizer/sizer.dart';

import 'LocalizationBloc/localization_bloc.dart';

class LocalizationPopUpWidget {
  LocalizationPopUpWidget({required this.context});

  BuildContext context;

  popUpChooseLocale(BuildContext context) {
    Locale locale = BlocProvider.of<LocalizationBloc>(context).locale!;
    AppLocalIndex? currntValue = locale == const Locale('en')
        ? AppLocalIndex.en
        : locale == const Locale('ar')
            ? AppLocalIndex.ar
            : AppLocalIndex.en;

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                BlocBuilder<LocaleChangeLanguage, LocaleChangeLanguageState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        RadioMenuButton(
                          value: AppLocalIndex.ar,
                          groupValue: currntValue,
                          onChanged: (newValue) {
                            AppSharedPreferences.saveLang('ar');
                            context
                                .read<LocaleChangeLanguage>()
                                .changeLanguage(newValue!);
                            currntValue = context
                                .read<LocaleChangeLanguage>()
                                .appLocalIndex;
                              print("lang  is : ${AppSharedPreferences.getLang}");

                            // CachHelper.SaveData(key: 'lan', value: 'ar');
                          },
                          child: const Text("العربية"),
                        ),
                        RadioMenuButton(
                          value: AppLocalIndex.en,
                          groupValue: currntValue,
                          onChanged: (newValue) {
                            AppSharedPreferences.saveLang('en');
                            context
                                .read<LocaleChangeLanguage>()
                                .changeLanguage(newValue!);
                            currntValue = context
                                .read<LocaleChangeLanguage>()
                                .appLocalIndex;
                            // CachHelper.SaveData(key: 'lan', value: 'en');
                          },
                          child: const Text("English"),
                        ),
                        // RadioMenuButton(
                        //   value: AppLocalIndex.ku,
                        //   groupValue: currntValue,
                        //   onChanged: (newValue) {
                        //     context
                        //         .read<LocaleChangeLanguage>()
                        //         .changeLanguage(newValue!);
                        //     currntValue = context
                        //         .read<LocaleChangeLanguage>()
                        //         .appLocalIndex;
                        //     // CachHelper.SaveData(key: 'lan', value: 'kur');
                        //   },
                        //   child: const Text("Kurdish"),
                        // ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                color: AppColors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w),
                                     ),
                                onPressed: () {
                                  if (context
                                          .read<LocaleChangeLanguage>()
                                          .appLocalIndex ==
                                      AppLocalIndex.en) {
                                    // ignore: avoid_print
                                    print(currntValue);
                                    // ignore: avoid_print
                                    print(context
                                        .read<LocaleChangeLanguage>()
                                        .appLocalIndex);
                                    if (locale != const Locale('en')) {
                                      currntValue = context
                                          .read<LocaleChangeLanguage>()
                                          .appLocalIndex;
                                      BlocProvider.of<LocalizationBloc>(context)
                                          .add(ChangeLanguageEvent(
                                              locale: const Locale('en'),
                                              localeIndex: currntValue!));

                                      Navigator.pop(context);

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            content: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.h),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[400],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.w)),
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 0.1.w),
                                              child: Text(
                                                "The application language has been successfully changed"
                                                    .tr(context),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            duration:
                                                const Duration(seconds: 2)),
                                      );
                                    }
                                  } else if (context
                                          .read<LocaleChangeLanguage>()
                                          .appLocalIndex ==
                                      AppLocalIndex.ar) {
                                    if (locale != const Locale('ar')) {
                                      currntValue = context
                                          .read<LocaleChangeLanguage>()
                                          .appLocalIndex;
                                      BlocProvider.of<LocalizationBloc>(context)
                                          .add(ChangeLanguageEvent(
                                              locale: const Locale('ar'),
                                              localeIndex: currntValue!));

                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              elevation: 0,
                                              backgroundColor:
                                                  Colors.transparent,
                                              content: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 1.h),
                                                decoration: BoxDecoration(
                                                    color: Colors.green[400],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.w)),
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 0.1.w),
                                                child: Text(
                                                  "The application language has been successfully changed"
                                                      .tr(context),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              duration:
                                                  const Duration(seconds: 2)));
                                    }
                                  }   
                                  
                                  
                                  //  else if (context
                                  //         .read<LocaleChangeLanguage>()
                                  //         .appLocalIndex ==
                                  //     AppLocalIndex.ku) {
                                  //   if (locale != const Locale('ku')) {
                                  //     currntValue = context
                                  //         .read<LocaleChangeLanguage>()
                                  //         .appLocalIndex;
                                  //     BlocProvider.of<LocalizationBloc>(context)
                                  //         .add(ChangeLanguageEvent(
                                  //             locale: const Locale('ku'),
                                  //             localeIndex: currntValue!));

                                  //     Navigator.pop(context);
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(SnackBar(
                                  //             elevation: 0,
                                  //             backgroundColor:
                                  //                 Colors.transparent,
                                  //             content: Container(
                                  //               padding: EdgeInsets.symmetric(
                                  //                   vertical: 1.h),
                                  //               decoration: BoxDecoration(
                                  //                   color: Colors.green[400],
                                  //                   borderRadius:
                                  //                       BorderRadius.circular(
                                  //                           2.w)),
                                  //               margin: EdgeInsets.symmetric(
                                  //                   horizontal: 0.1.w),
                                  //               child: Text(
                                  //                 "The application language has been successfully changed"
                                  //                     .tr(context),
                                  //                 textAlign: TextAlign.center,
                                  //               ),
                                  //             ),
                                  //             duration:
                                  //                 const Duration(seconds: 2)));
                                  //   }

                                  //   // ScaffoldMessenger.of(context).showSnackBar(
                                  //   //     SnackBar(
                                  //   //         elevation: 0,
                                  //   //         backgroundColor: Colors.transparent,
                                  //   //         content: Container(
                                  //   //           padding: EdgeInsets.symmetric(
                                  //   //               vertical: 1.h),
                                  //   //           decoration: BoxDecoration(
                                  //   //               color: Colors.green[400],
                                  //   //               borderRadius:
                                  //   //                   BorderRadius.circular(2.w)),
                                  //   //           margin: EdgeInsets.symmetric(
                                  //   //               horizontal: 0.1.w),
                                  //   //           child: Text(
                                  //   //             "This Language Is Not Supported Now"
                                  //   //                 .tr(context),
                                  //   //             textAlign: TextAlign.center,
                                  //   //           ),
                                  //   //         ),
                                  //   //         duration:
                                  //   //             const Duration(seconds: 2)));
                                  // }
                                },
                                child: Text(
                                  "confirm".tr(context),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2.w),
                                  ),
                                  color: AppColors.splashGradientYello.withOpacity(0.8),
                                  child: Text(
                                    "Cancel".tr(context),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              title: Center(
                child: Text(
                  "Change App Language".tr(context),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ));
  }
}
