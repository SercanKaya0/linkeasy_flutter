import 'package:flutter/material.dart';

class CircleImageComponent extends StatelessWidget {
  const CircleImageComponent({Key? key, required this.iconData}) : super(key: key);
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Icon(iconData),
      backgroundColor: Colors.purple,
      radius: 50,
    );
  }
}
