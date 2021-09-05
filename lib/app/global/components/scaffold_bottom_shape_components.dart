import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScaffoldBottomShapeComponent extends StatelessWidget {
  const ScaffoldBottomShapeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF393152),
      alignment: Alignment.topRight,
      child: SvgPicture.asset("assets/images/shape.svg"),
    );
  }
}
