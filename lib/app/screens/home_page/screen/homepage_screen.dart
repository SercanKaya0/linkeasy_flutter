import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../global/components/appbar_components.dart';
import '../../../global/components/circular_progress_indicator_components.dart';
import '../../../global/get_it/get_it.dart';
import '../../../global/helpers/padding_helpers.dart';
import '../../url_short/viewmodel/url_short_viewmodel.dart';
import 'widgets/home_screen_bottom.dart';

class HomePageScreens extends StatelessWidget {
  HomePageScreens({Key? key}) : super(key: key);

  final URLShotViewModel _urlShortenModel = getIt.get<URLShotViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: (_urlShortenModel.showAppbar)
            ? AppBarComponents.appBarWidget()
            : null,
        body: Container(
          child: _getCurrentScreen(),
        ),
      );
    });
  }

// * Home page ekranında gösterilen resim ve yazının bulunduğu fonksiyondur.
  Widget _getCurrentScreen() => Column(
        children: [
          Expanded(
            flex: 90,
            child: Container(
              padding: PaddingHelpers.instance.horizontal24x,
              child: Observer(builder: (_) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    _urlShortenModel.currentScreen,
                    // * Sorgu gönderilirken ekranda gözüken circle progress.
                    if (_urlShortenModel.isLoadingScreen)
                      CircularProgressIndicatorComponent()
                  ],
                );
              }),
            ),
          ),
          Expanded(
            flex: 25,
            child: ScaffoldBottomBarWidget(),
          ),
        ],
      );
}
