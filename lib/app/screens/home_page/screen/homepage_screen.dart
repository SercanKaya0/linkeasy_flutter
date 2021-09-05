import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shortly_flutter/app/global/components/appbar_components.dart';
import 'package:shortly_flutter/app/global/components/circular_progress_indicator_components.dart';
import 'package:shortly_flutter/app/global/components/scaffold_bottom_shape_components.dart';
import 'package:shortly_flutter/app/global/get_it/get_it.dart';
import 'package:shortly_flutter/app/global/helpers/padding_helpers.dart';
import 'package:shortly_flutter/app/screens/home_page/screen/widgets/home_screen_bottom.dart';
import 'package:shortly_flutter/app/screens/home_page/viewmodel/homescreen_viewmodel.dart';

class HomePageScreens extends StatelessWidget {
  HomePageScreens({Key? key}) : super(key: key);
  final HomeScreenViewModel _homeScreenViewModel =
      getIt.get<HomeScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarComponents.appBarWidget(),
      body: Container(
        child: _getCurrentScreen(),
      ),
    );
  }

  Widget _getCurrentScreen() => Observer(
        builder: (context) {
          return Column(
            children: [
              Expanded(
                flex: 90,
                child: Container(
                  padding:
                      PaddingHelpers.instance.horizontal24Vertical30Padding,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _homeScreenViewModel.currentScreen,
                      if (_homeScreenViewModel.isLoadingScreen)
                        CircularProgressIndicatorComponent()
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 30,
                child: ScaffoldBottomBarWidget(
                  onPressedShortenIt: () {},
                ),
              ),
            ],
          );
        },
      );
}
