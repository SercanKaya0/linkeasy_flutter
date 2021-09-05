import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shortly_flutter/app/screens/url_short/screens/url_short_screen.dart';
import 'package:shortly_flutter/app/screens/url_short/services/interface/i_urlshort_repository.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/screens/url_history_screen.dart';
part 'url_short_viewmodel.g.dart';

class URLShotViewModel = _URLShotViewModelBase with _$URLShotViewModel;

abstract class _URLShotViewModelBase with Store {
  final IURLShortRepository iurlShortRepository;
  _URLShotViewModelBase({required this.iurlShortRepository});

  @observable
  bool showAppbar = true;

  @observable
  bool isLoadingScreen = false;

  @observable
  Widget currentScreen = URLShortScreen();

  @action
  Future<void> urlShortenPost(String? shortURL) async {
    isLoadingScreen = true;
    await Future.delayed(Duration(milliseconds: 1500));
    final response = await iurlShortRepository.shortenURL({"url": shortURL});
    response.when(success: (data) async {
      await iurlShortRepository.saveHiveURLHistory(
          data: URLHistoryHiveModel(
        code: data.result!.code,
        copiedButton: false,
        fullShareLink: data.result!.fullShareLink,
        fullShortLink2: data.result!.fullShortLink2,
        fullShortLink3: data.result!.fullShortLink3,
        fullShortLink: data.result!.fullShortLink,
        originalLink: data.result!.originalLink,
        shareLink: data.result!.shareLink,
        shortLink2: data.result!.shortLink2,
        shortLink3: data.result!.shortLink3,
        shortLink: data.result!.shortLink,
      ));
      isLoadingScreen = false;
      showAppbar = false;
      currentScreen = URLHistoryScreen();
    }, failure: (error) {
      isLoadingScreen = false;
    });
  }
}
