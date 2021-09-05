import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shortly_flutter/app/global/components/elevated_button_widget.dart';
import 'package:shortly_flutter/app/global/components/scaffold_bottom_shape_components.dart';
import 'package:shortly_flutter/app/global/components/textfield_widget.dart';
import 'package:shortly_flutter/app/global/get_it/get_it.dart';
import 'package:shortly_flutter/app/screens/home_page/viewmodel/homescreen_viewmodel.dart';
import 'package:shortly_flutter/core/screen_size/screen_size_helper.dart';

class ScaffoldBottomBarWidget extends StatefulWidget {
  ScaffoldBottomBarWidget({Key? key, required this.onPressedShortenIt})
      : super(key: key);

  final void Function()? onPressedShortenIt;

  @override
  _ScaffoldBottomBarWidgetState createState() =>
      _ScaffoldBottomBarWidgetState();
}

class _ScaffoldBottomBarWidgetState extends State<ScaffoldBottomBarWidget> {
  final HomeScreenViewModel _homeScreenViewModel =
      getIt.get<HomeScreenViewModel>();

  @override
  void dispose() {
    _homeScreenViewModel.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ScaffoldBottomShapeComponent(),
          _getWelcomeBottomButtons(),
        ],
      ),
    );
  }

  Widget _getWelcomeBottomButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(flex: 5),
          Flexible(
            flex: 10,
            child: Observer(builder: (_) {
              return TextFieldWidget(
                isURLControl: _homeScreenViewModel.isValidator,
                hintText: "home.bottom_textfield_hint_text",
                controller: _homeScreenViewModel.textEditingController,
                onChanged: _homeScreenViewModel.controlURLScheme,
              );
            }),
          ),
          Spacer(flex: 1),
          Expanded(
              flex: 10,
              child: ElevatedButtonWidget(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                textColor: Colors.white,
                backgroundColor: Color(0XFF64cccd),
                buttonTitle: "home.bottom_shorten_it_button_text",
                onPressed: () {},
              )),
          Spacer(flex: 5)
        ],
      ),
    );
  }
}
