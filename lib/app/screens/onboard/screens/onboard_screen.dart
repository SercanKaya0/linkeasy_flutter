import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/components/appbar_components.dart';
import 'package:shortly_flutter/app/global/components/text_button_component.dart';
import 'package:shortly_flutter/app/global/helpers/padding_helpers.dart';
import 'package:shortly_flutter/app/screens/onboard/screens/widgets/onboard_pageview_indicator.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponents.appBarWidget(),
      body: Container(
        padding: PaddingHelpers.instance.horizontal24Vertical30Padding,
        child: Column(
          children: [
            Spacer(flex: 5),
            Expanded(flex: 10, child: Container(color: Colors.red)),
            Spacer(flex: 10),
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
      buttonTitle: "onboard.skip_button_text", onPressed: () {});
// * PageView Circle Indicator.
  Widget _getPageViewBuilderIndicator() => ListView.builder(
        itemBuilder: (context, index) {
          return OnboardPageViewIndicator(currentIndex: 1, index: index);
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
      );
}
