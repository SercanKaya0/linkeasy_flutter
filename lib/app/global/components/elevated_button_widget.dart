
import 'package:flutter/material.dart';

import '../../../core/localization/widget/locale_text_widget.dart';
import '../../../core/screen_size/screen_size_helper.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.fontSize,
      required this.buttonTitle,
      required this.backgroundColor,
      required this.textColor,
      this.side,
      this.buttonHeight,
      this.fontWeight})
      : super(key: key);
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final String? buttonTitle;
  final double? fontSize;
  final double? buttonHeight;
  final FontWeight? fontWeight;

  final MaterialStateProperty<BorderSide?>? side;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidht(width: 1.0),
      height: context.screenHeight(height: buttonHeight),
      child: ElevatedButton(
        onPressed: onPressed,
        child: TranslationText(
          text: buttonTitle!,
          style: TextStyle(
              color: textColor, fontSize: fontSize, fontWeight: fontWeight),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            side: side),
      ),
    );
  }
}
