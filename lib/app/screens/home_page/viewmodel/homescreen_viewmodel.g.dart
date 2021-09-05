// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homescreen_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeScreenViewModel on _HomeScreenViewModelBase, Store {
  final _$isLoadingScreenAtom =
      Atom(name: '_HomeScreenViewModelBase.isLoadingScreen');

  @override
  bool get isLoadingScreen {
    _$isLoadingScreenAtom.reportRead();
    return super.isLoadingScreen;
  }

  @override
  set isLoadingScreen(bool value) {
    _$isLoadingScreenAtom.reportWrite(value, super.isLoadingScreen, () {
      super.isLoadingScreen = value;
    });
  }

  final _$isValidatorAtom = Atom(name: '_HomeScreenViewModelBase.isValidator');

  @override
  bool get isValidator {
    _$isValidatorAtom.reportRead();
    return super.isValidator;
  }

  @override
  set isValidator(bool value) {
    _$isValidatorAtom.reportWrite(value, super.isValidator, () {
      super.isValidator = value;
    });
  }

  final _$currentScreenAtom =
      Atom(name: '_HomeScreenViewModelBase.currentScreen');

  @override
  Widget get currentScreen {
    _$currentScreenAtom.reportRead();
    return super.currentScreen;
  }

  @override
  set currentScreen(Widget value) {
    _$currentScreenAtom.reportWrite(value, super.currentScreen, () {
      super.currentScreen = value;
    });
  }

  final _$textEditingControllerAtom =
      Atom(name: '_HomeScreenViewModelBase.textEditingController');

  @override
  TextEditingController get textEditingController {
    _$textEditingControllerAtom.reportRead();
    return super.textEditingController;
  }

  @override
  set textEditingController(TextEditingController value) {
    _$textEditingControllerAtom.reportWrite(value, super.textEditingController,
        () {
      super.textEditingController = value;
    });
  }

  final _$_HomeScreenViewModelBaseActionController =
      ActionController(name: '_HomeScreenViewModelBase');

  @override
  void controlURLScheme(String value) {
    final _$actionInfo = _$_HomeScreenViewModelBaseActionController.startAction(
        name: '_HomeScreenViewModelBase.controlURLScheme');
    try {
      return super.controlURLScheme(value);
    } finally {
      _$_HomeScreenViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingScreen: ${isLoadingScreen},
isValidator: ${isValidator},
currentScreen: ${currentScreen},
textEditingController: ${textEditingController}
    ''';
  }
}
