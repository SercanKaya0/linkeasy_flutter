import 'package:flutter/material.dart';
import '../localization_extensions/localization_extensions.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TranslationText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;

  const TranslationText(
      {Key? key, required this.text, this.style, this.textAlign, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text.locale,
      maxLines: maxLines ?? 5,
      maxFontSize: 40,
      minFontSize: 14,
      style: style,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
