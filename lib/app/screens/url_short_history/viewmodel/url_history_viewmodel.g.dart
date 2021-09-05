// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_history_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$URLHistoryViewModel on _URLHistoryViewModelBase, Store {
  final _$deleteURLHistoryHiveAsyncAction =
      AsyncAction('_URLHistoryViewModelBase.deleteURLHistoryHive');

  @override
  Future<void> deleteURLHistoryHive(int index) {
    return _$deleteURLHistoryHiveAsyncAction
        .run(() => super.deleteURLHistoryHive(index));
  }

  final _$setUpdateCopiedButtonAsyncAction =
      AsyncAction('_URLHistoryViewModelBase.setUpdateCopiedButton');

  @override
  Future<void> setUpdateCopiedButton(int index,
      {required URLHistoryHiveModel data}) {
    return _$setUpdateCopiedButtonAsyncAction
        .run(() => super.setUpdateCopiedButton(index, data: data));
  }

  final _$_URLHistoryViewModelBaseActionController =
      ActionController(name: '_URLHistoryViewModelBase');

  @override
  Color? copyButtonBackgroundColorControl(bool isCopied) {
    final _$actionInfo = _$_URLHistoryViewModelBaseActionController.startAction(
        name: '_URLHistoryViewModelBase.copyButtonBackgroundColorControl');
    try {
      return super.copyButtonBackgroundColorControl(isCopied);
    } finally {
      _$_URLHistoryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String copyButtonTitleControl(bool isCopied) {
    final _$actionInfo = _$_URLHistoryViewModelBaseActionController.startAction(
        name: '_URLHistoryViewModelBase.copyButtonTitleControl');
    try {
      return super.copyButtonTitleControl(isCopied);
    } finally {
      _$_URLHistoryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
