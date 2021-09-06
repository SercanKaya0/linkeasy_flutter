import 'package:flutter/material.dart';

import '../../../../../core/images/images_helper.dart';
import '../../../../../core/localization/widget/locale_text_widget.dart';
import '../../../../../core/screen_size/screen_size_helper.dart';

class OnboardPageViewBuilderCellWidget extends StatelessWidget {
  const OnboardPageViewBuilderCellWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageName,
  }) : super(key: key);
  final String? title;
  final String? description;
  final String? imageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 10,
            child: ImagesHelper.getAssetImage(
                imageName: imageName!, width: context.screenWidht())),
        Flexible(
          flex: 2,
          child: TranslationText(
              text: title!, style: Theme.of(context).textTheme.headline2),
        ),
        Expanded(
          flex: 2,
          child: TranslationText(
            text: description!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}
