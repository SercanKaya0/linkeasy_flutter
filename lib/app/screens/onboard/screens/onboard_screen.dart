import 'package:flutter/material.dart';
import 'package:shortly_flutter/app/global/components/appbar_components.dart';
import 'package:shortly_flutter/app/global/helpers/padding_helpers.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponents.appBarWidget(),
      body: Container(padding: PaddingHelpers.instance.horizontal24Vertical30Padding,),
    );
  }
}
