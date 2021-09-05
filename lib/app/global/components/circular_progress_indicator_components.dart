import 'package:flutter/material.dart';

class CircularProgressIndicatorComponent extends StatelessWidget {
   CircularProgressIndicatorComponent({Key? key, this.indicatorColor}) : super(key: key);
  final Color? indicatorColor;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation<Color>(indicatorColor ?? Color(0XFF64cccd)),
    );
  }
}
