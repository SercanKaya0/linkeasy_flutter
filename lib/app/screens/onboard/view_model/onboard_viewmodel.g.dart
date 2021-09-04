// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboard_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnboardViewModel on _OnboardViewModelBase, Store {
  final _$currentIndexAtom = Atom(name: '_OnboardViewModelBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$onboardPageBuilderListAtom =
      Atom(name: '_OnboardViewModelBase.onboardPageBuilderList');

  @override
  List<OnboardScreenModel> get onboardPageBuilderList {
    _$onboardPageBuilderListAtom.reportRead();
    return super.onboardPageBuilderList;
  }

  @override
  set onboardPageBuilderList(List<OnboardScreenModel> value) {
    _$onboardPageBuilderListAtom
        .reportWrite(value, super.onboardPageBuilderList, () {
      super.onboardPageBuilderList = value;
    });
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
onboardPageBuilderList: ${onboardPageBuilderList}
    ''';
  }
}
