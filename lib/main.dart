import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_Education/Localization/AppLocalization.dart';
import 'package:open_Education/Localization/LocalizationBloc/localization_bloc.dart';
import 'package:open_Education/Modules/Auth/View/Screens/sign_in.dart';
import 'package:open_Education/Modules/Ordering_System/View/Screen/add_ordering.dart';
import 'package:open_Education/Modules/Splash_Screen/splashScreen.dart';
import 'package:open_Education/Modules/Supervisor/View/Screen/check_list_public.dart';

import 'package:open_Education/SharedPreferences/SharedPreferencesHelper.dart';
import 'package:open_Education/Localization/injection/DependancyInjection.dart'
    as injection;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:open_Education/constant/appColors.dart';
import 'package:open_Education/observer/BlocObservable.dart';
import 'package:sizer/sizer.dart';
import 'Modules/Auth/View/Screens/sign_in.dart';
import 'Modules/Courses_Registration/View/Screens/courses_registration.dart';
import 'Modules/Ordering_System/View/Screen/add_ordering.dart';
import 'Modules/Supervisor/View/Screen/supervisor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await CachHelper.init();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.purple,
    statusBarIconBrightness: Brightness.light,
  ));

  await injection.init();
  await AppSharedPreferences.init();
  print("lang  is : ${AppSharedPreferences.getLang}");
  Bloc.observer = BlocObservable();

  // String? token = CachHelper.getData(key: 'token');
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // String? lan = sharedPreferences.getString('language');
  // CachHelper.SaveData(key: 'lan', value: lan.toString()); //lan.toString());
  // var myBlocObserver = Bloc.observer = MyBlocObserver();
  // ignore: avoid_print
  // print(lan);
  // // ignore: avoid_print
  // print(token);
  Widget? widget;
  // if (token != null) {
  // } else {
  //   widget = const OnBoardingOne();
  // }
  runApp(MyApp(
    StartWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Widget? StartWidget;
  // ignore: non_constant_identifier_names
  const MyApp({super.key, this.StartWidget});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => injection.getIt<LocalizationBloc>()
                ..add(OpeningAppLanguageEvent())),
          // BlocProvider(create: (_) => injection.getIt<PageCubit>()),
          // BlocProvider(create: (_) => injection.getIt<StepperCubit>()),
          BlocProvider(create: (_) => LocaleChangeLanguage()),
        ],
        child: BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (context, state) {
          if (state is LocalizationSuccessState) {
            return Sizer(builder: (context, orientation, deviceType) {
              return MaterialApp(
                theme: ThemeData(
                    bottomSheetTheme: const BottomSheetThemeData(
                        backgroundColor: Colors.transparent, elevation: 0)),
                locale: state.locale,
                supportedLocales: const [
                  Locale('ar'),
                  Locale('en'),
                ],
                localizationsDelegates: [
                  // RefreshLocalizations.delegate,
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,

                home:Supervisor()
                // routes: routs
              );
                  // theme: ThemeData(
                  //     bottomSheetTheme: const BottomSheetThemeData(
                  //         backgroundColor: Colors.transparent, elevation: 0)),
                  // locale: state.locale,
                  // supportedLocales: const [
                  //   Locale('ar'),
                  //   Locale('en'),
                  // ],
                  // localizationsDelegates: [
                  //   // RefreshLocalizations.delegate,
                  //   AppLocalizations.delegate,
                  //   GlobalMaterialLocalizations.delegate,
                  //   GlobalWidgetsLocalizations.delegate,
                  //   GlobalCupertinoLocalizations.delegate,
                  // ],
                  // debugShowCheckedModeBanner: false,
                  // home: SplashScreen()
                  // // routes: routs
                  // );
            });
          } else {
            return const SizedBox();
          }
        }));
  }
}
