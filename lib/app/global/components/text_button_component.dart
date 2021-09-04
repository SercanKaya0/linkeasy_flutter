import 'package:flutter/material.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent(
      {Key? key, required this.buttonTitle, required this.onPressed})
      : super(key: key);
  final String buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: TranslationText(text: buttonTitle),
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style,
    );
  }
}
