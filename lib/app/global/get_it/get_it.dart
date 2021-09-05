import 'package:get_it/get_it.dart';
import 'package:shortly_flutter/app/screens/url_short/services/interface/i_urlshort_repository.dart';
import 'package:shortly_flutter/app/screens/url_short/services/repository/url_short_repository.dart';
import 'package:shortly_flutter/app/screens/url_short/viewmodel/url_short_viewmodel.dart';
import 'package:shortly_flutter/app/screens/url_short_history/services/interface/i_url_history_repository.dart';
import 'package:shortly_flutter/app/screens/url_short_history/services/repository/url_history_repository.dart';
import 'package:shortly_flutter/app/screens/url_short_history/viewmodel/url_history_viewmodel.dart';

import '../../screens/home_page/viewmodel/homescreen_viewmodel.dart';
import '../../screens/onboard/view_model/onboard_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  _setupViewModel();
  _setupRepository();
}

void _setupViewModel() {
  getIt.registerLazySingleton<OnboardViewModel>(() => OnboardViewModel());
  getIt.registerLazySingleton<HomeScreenViewModel>(() => HomeScreenViewModel());
  getIt.registerLazySingleton<URLShotViewModel>(
      () => URLShotViewModel(iurlShortRepository: getIt()));
  getIt.registerLazySingleton<URLHistoryViewModel>(
      () => URLHistoryViewModel(iurlHistoryRepository: getIt()));
}

void _setupRepository() {
  getIt.registerLazySingleton<IURLShortRepository>(() => URLShortRepository());
  getIt.registerLazySingleton<IURLHistoryRepository>(
      () => URLHistoryRepository());
}
