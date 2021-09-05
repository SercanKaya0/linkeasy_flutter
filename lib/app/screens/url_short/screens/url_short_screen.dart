import 'package:flutter/material.dart';

import '../../../../core/localization/widget/locale_text_widget.dart';
import '../../../global/helpers/svg_pictures_helpers.dart';

class URLShortScreen extends StatelessWidget {
  const URLShortScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 30, child: _getIllustratorMethod()),
        Expanded(flex: 4, child: _getURLShortScreenTitle(context)),
        Expanded(flex: 7, child: _getURLShortScreenDescription(context)),
      ],
    );
  }

  Widget _getIllustratorMethod() =>
      SVGPicturesHelper.getSVGPictureAssets(svgName: "illustration");
  Widget _getURLShortScreenTitle(BuildContext context) => TranslationText(
        text: "url_short.title",
        style: Theme.of(context).textTheme.headline1,
      );
  Widget _getURLShortScreenDescription(BuildContext context) => TranslationText(
        text: "url_short.description",
        textAlign: TextAlign.center,
        maxLines: 2,
        style: Theme.of(context).textTheme.subtitle1,
      );
}
