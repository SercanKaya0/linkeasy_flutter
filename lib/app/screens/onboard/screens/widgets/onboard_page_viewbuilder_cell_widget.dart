import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/components/circle_image_components.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';
import 'package:shortly_flutter/core/screen_size/screen_size_helper.dart';

class OnboardPageViewBuilderCellWidget extends StatelessWidget {
  const OnboardPageViewBuilderCellWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.iconData,
  }) : super(key: key);
  final String? title;
  final String? description;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: context.screenHeight(height: 0.32),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                flex: 1,
                child: TranslationText(
                    text: title!, style: Theme.of(context).textTheme.headline2),
              ),
              Expanded(
                flex: 1,
                child: TranslationText(
                  text: description!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
        Positioned(top: -50, child: CircleImageComponent(iconData: iconData!)),
      ],
    );
  }
}
