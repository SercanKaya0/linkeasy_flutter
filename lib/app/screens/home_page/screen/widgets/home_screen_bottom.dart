import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shortly_flutter/app/global/components/elevated_button_components.dart';

import 'package:shortly_flutter/app/global/components/scaffold_bottom_shape_components.dart';
import 'package:shortly_flutter/app/global/components/textfield_widget.dart';
import 'package:shortly_flutter/app/global/get_it/get_it.dart';
import 'package:shortly_flutter/app/screens/home_page/viewmodel/homescreen_viewmodel.dart';
import 'package:shortly_flutter/app/screens/url_short/viewmodel/url_short_viewmodel.dart';

class ScaffoldBottomBarWidget extends StatefulWidget {
  ScaffoldBottomBarWidget({Key? key}) : super(key: key);

  @override
  _ScaffoldBottomBarWidgetState createState() =>
      _ScaffoldBottomBarWidgetState();
}

class _ScaffoldBottomBarWidgetState extends State<ScaffoldBottomBarWidget> {
  // * ViewModel
  final HomeScreenViewModel _homeScreenViewModel =
      getIt.get<HomeScreenViewModel>();
  final URLShotViewModel _urlShortenModel = getIt.get<URLShotViewModel>();

  @override
  void dispose() {
    _homeScreenViewModel.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // * El altta gösterilen button ve textfield componentinin arka plan shape componenti.
        ScaffoldBottomShapeComponent(),
        // * TextField ve Button
        _getWelcomeBottomTextfieldAndButtons(),
      ],
    );
  }

  Widget _getWelcomeBottomTextfieldAndButtons() {
    return Padding(
      // * Kenarlardan boşluk bırakır.
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
              // * Global Componentten gelen Textfield Widggettır. Viewmodel üzerinden kontrolleri yapılır
              return TextFieldWidget(
                // * eğer url istenilen formatta değilse border,hinttext color ve hinttext yazısı değişir.
                isURLControl: _homeScreenViewModel.isValidator,
                errorText: "home.empty_textfield_hint_text",
                hintText: "home.bottom_textfield_hint_text",
                controller: _homeScreenViewModel.textEditingController,
                // * Kullanıcı veri girdikçe çalışan fonksiyondur,
                // * viewmodel üzerindeki fonksiyone ile isValidator değişkeni şartlara göre değişir.
                onChanged: _homeScreenViewModel.controlURLScheme,
              );
            }),
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 10,
            child: ElevatedButtonsComponent(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
              backgroundColor: Color(0XFF64cccd),
              buttonTitle: "home.bottom_shorten_it_button_text",
              onPressed: () async {
                if (_homeScreenViewModel.textEditingController.text != "") {
                  await _urlShortenModel.urlShortenPost(_homeScreenViewModel.textEditingController.text);
                } else {
                  _homeScreenViewModel.isValidator = true;
                }
              },
            ),
          ),
          Spacer(flex: 5)
        ],
      ),
    );
  }
}
