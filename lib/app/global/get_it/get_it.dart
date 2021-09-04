import 'package:get_it/get_it.dart';
import 'package:shortly_flutter/app/screens/onboard/view_model/onboard_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  _setupViewModel();
}

void _setupViewModel() {
  getIt.registerLazySingleton<OnboardViewModel>(() => OnboardViewModel());
}
