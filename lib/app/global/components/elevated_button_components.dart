import 'package:flutter/material.dart';
import 'package:shortly_flutter/core/localization/widget/locale_text_widget.dart';
import 'package:shortly_flutter/core/screen_size/screen_size_helper.dart';

class ElevatedButtonsComponent extends StatelessWidget {
  const ElevatedButtonsComponent(
      {Key? key,
      this.buttonHeight,
      this.buttonWidth,
      required this.onPressed,
      this.backgroundColor,
      required this.buttonTitle,
      this.fontSize,
      this.fontWeight,
      this.side,
      this.textColor})
      : super(key: key);
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? textColor;
  final FontWeight? fontWeight;
  final void Function()? onPressed;
  final MaterialStateProperty<BorderSide?>? side;
  final Color? backgroundColor;
  final String buttonTitle;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // * Ekranın genişliğini hesaplayan bir extensiondan gelir. Eğer boş bırakılırsa ekranın genişliğini 1 ile çarpar. Eğer değer verilir ise verilen değer ile çarpar.
      width: context.screenWidht(width: buttonWidth),
      // * Ekranın yüksekliğini hesaplayan bir extensiondan gelir. Eğer boş bırakılırsa ekranın yüksekliği 1 ile çarpar. Eğer değer verilir ise verilen değer ile çarpar.
      height: context.screenHeight(height: buttonHeight),
      child: ElevatedButton(
        onPressed: onPressed,
        child: TranslationText(
          text: buttonTitle,
          style: TextStyle(
              color: textColor, fontSize: fontSize, fontWeight: fontWeight),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                backgroundColor ?? Color(0XFFff0044)),
            side: side),
      ),
    );
  }
}
