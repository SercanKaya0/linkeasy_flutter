// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_short_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$URLShotViewModel on _URLShotViewModelBase, Store {
  final _$showAppbarAtom = Atom(name: '_URLShotViewModelBase.showAppbar');

  @override
  bool get showAppbar {
    _$showAppbarAtom.reportRead();
    return super.showAppbar;
  }

  @override
  set showAppbar(bool value) {
    _$showAppbarAtom.reportWrite(value, super.showAppbar, () {
      super.showAppbar = value;
    });
  }

  final _$isLoadingScreenAtom =
      Atom(name: '_URLShotViewModelBase.isLoadingScreen');

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

  final _$currentScreenAtom = Atom(name: '_URLShotViewModelBase.currentScreen');

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

  final _$urlShortenPostAsyncAction =
      AsyncAction('_URLShotViewModelBase.urlShortenPost');

  @override
  Future<void> urlShortenPost(String? shortURL) {
    return _$urlShortenPostAsyncAction
        .run(() => super.urlShortenPost(shortURL));
  }

  @override
  String toString() {
    return '''
showAppbar: ${showAppbar},
isLoadingScreen: ${isLoadingScreen},
currentScreen: ${currentScreen}
    ''';
  }
}
