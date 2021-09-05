import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'homescreen_viewmodel.g.dart';

class HomeScreenViewModel = _HomeScreenViewModelBase with _$HomeScreenViewModel;

abstract class _HomeScreenViewModelBase with Store {
  @observable
  bool isValidator = false;



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
