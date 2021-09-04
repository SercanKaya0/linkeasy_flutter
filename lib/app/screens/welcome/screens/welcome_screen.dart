import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/components/elevated_button_components.dart';
import 'package:shortly_flutter/app/global/helpers/spacer_flex_helper.dart';
import 'package:shortly_flutter/app/global/helpers/svg_pictures_helpers.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';

import '../../../global/components/app_logo_image_components.dart';
import '../../../global/helpers/padding_helpers.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        // * Containere kenarlardan 16px Boşluk verir.
        padding: PaddingHelpers.instance.horizontalPadding16x,
        child: Column(
          children: [
            // * Uygulama Logosunun Bulunduğu yerdir.
            Flexible(flex: 2, child: Center(child: AppLogoComponents())),
            // * Global bir component kullanarak gösterilen Welcome Illustrator resmidir. Resim assets->images klasörü içerisindedir.
            Expanded(
                flex: 15,
                child: SVGPicturesHelper.getSVGPictureAssets(
                    svgName: "illustration")),
            // * Title açıklaması buradan gelmektedir. -> More Than
            Flexible(flex: 4, child: _getWelcomeTitleMethod(context)),
            // * Start Button Döndüren Fonksiyondur.
            Expanded(flex: 3, child: _getWelcomeSubTitleMethod(context)),
            Spacer(flex: 1),
            // * Start Button Döndüren .
            Expanded(flex: 2, child: _getStartButtonMethod()),

            //Spacer(flex: SpacerFlexHelper.instancer.bottomSpacerFlex())
          ],
        ),
      )),
    );
  }

// * Start Button Döndüren Fonksiyondur.
  Widget _getStartButtonMethod() {
    return ElevatedButtonsComponent(
      buttonTitle: "welcome.button_start_title",
      onPressed: () {},
    );
  }

// * Welcome Title Döndüren Fonksiyondur. -> More than ...
  Widget _getWelcomeTitleMethod(BuildContext context) => Center(
        child: TranslationText(
          text: "welcome.title",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
      );

// * Welcome Subtitle Döndüren Fonksiyondur. -> Build your brand...ç
  Widget _getWelcomeSubTitleMethod(BuildContext context) => Center(
        child: TranslationText(
          text: "welcome.description",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      );
}
