import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shortly_flutter/app/screens/url_short/screens/url_short_screen.dart';
part 'homescreen_viewmodel.g.dart';

class HomeScreenViewModel = _HomeScreenViewModelBase with _$HomeScreenViewModel;

abstract class _HomeScreenViewModelBase with Store {
  @observable
  bool isLoadingScreen = true;

  @observable
  bool isValidator = false;

  @observable
  Widget currentScreen = URLShortScreen();

  @observable
  TextEditingController textEditingController = TextEditingController();
  @action
  void controlURLScheme(String value) {
    if (textEditingController.text == "") {
      isValidator = true;
    } else
      isValidator = false;
  }
}
