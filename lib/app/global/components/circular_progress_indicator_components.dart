import 'package:flutter/material.dart';

// * Uygulamda kullanılan circle progress widget buradan gelmektedir.
class CircularProgressIndicatorComponent extends StatelessWidget {
  CircularProgressIndicatorComponent({Key? key, this.indicatorColor})
      : super(key: key);
  // * Eğer color boş gönderilir ise default değer almaktadtır -> Color(0XFF64cccd).
  final Color? indicatorColor;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation<Color>(indicatorColor ?? Color(0XFF64cccd)),
    );
  }
}
