import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shortly_flutter/app/global/routes/routes.dart';
import 'package:shortly_flutter/core/navigation/navigation_helper.dart';

import '../../../global/components/appbar_components.dart';
import '../../../global/components/text_button_component.dart';
import '../../../global/get_it/get_it.dart';
import '../../../global/helpers/padding_helpers.dart';
import '../view_model/onboard_viewmodel.dart';
import 'widgets/onboard_page_viewbuilder_cell_widget.dart';
import 'widgets/onboard_pageview_indicator.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);
  final OnboardViewModel _onboardViewModel = getIt.get<OnboardViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponents.appBarWidget(),
      body: Container(
        padding: PaddingHelpers.instance.horizontal24Vertical30Padding,
        child: Column(
          children: [
            Expanded(flex: 20, child: _getPageViewBuilder()),
            Spacer(flex: 5),
            Flexible(flex: 1, child: _getPageViewBuilderIndicator()),
            // * Skip Buttons
            Expanded(flex: 2, child: _getSkipButtonMethod()),
          ],
        ),
      ),
    );
  }

// * Skip Button döndüren Fonksiyon
  Widget _getSkipButtonMethod() => TextButtonComponent(
      buttonTitle: "onboard.skip_button_text",
      onPressed: () {
        Navigation.pushNamed(root: Routes.home_screen);
      });
// * PageView Circle Indicator.
  Widget _getPageViewBuilderIndicator() => ListView.builder(
        itemBuilder: (context, index) {
          return Observer(builder: (_) {
            return OnboardPageViewIndicator(
                currentIndex: _onboardViewModel.currentIndex, index: index);
          });
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _onboardViewModel.onboardPageBuilderList.length,
      );
// * PageView Builder Ekranı
  Widget _getPageViewBuilder() => PageView.builder(
        itemBuilder: (context, index) {
          // * Ekranda gösterilen resim,title ve açıklamaların bulunduğu widget.
          // * Değerler onbobarviewmodel da bulunan listeden çekilip widget'a aktarılır.
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: OnboardPageViewBuilderCellWidget(
                iconData: _onboardViewModel.onboardPageBuilderList[index].image,
                title: _onboardViewModel.onboardPageBuilderList[index].title,
                description:
                    _onboardViewModel.onboardPageBuilderList[index].description,
              ),
            ),
          );
        },

        itemCount: _onboardViewModel.onboardPageBuilderList.length,

        // * Sayfa değiştikçe viewmodelda bulunan current index geçerli indexe eşitlenir.
        onPageChanged: (index) => _onboardViewModel.currentIndex = index,
        scrollDirection: Axis.horizontal,
      );
}
