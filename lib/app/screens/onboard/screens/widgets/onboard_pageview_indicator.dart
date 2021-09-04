import 'package:flutter/material.dart';

class OnboardPageViewIndicator extends StatelessWidget {
  const OnboardPageViewIndicator(
      {Key? key, required this.currentIndex, required this.index})
      : super(key: key);
  final int currentIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AnimatedContainer(
        width: currentIndex == index ? 10 : 8,
        duration: Duration(milliseconds: 1500),
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.grey : Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 2)),
      ),
    );
  }
}
