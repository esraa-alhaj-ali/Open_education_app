 
import 'package:get_it/get_it.dart';

import '../LocalizationBloc/localization_bloc.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(() => LocalizationBloc());
}
