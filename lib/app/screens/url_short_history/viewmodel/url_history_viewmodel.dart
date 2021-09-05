import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:shortly_flutter/app/screens/url_short/model/url_shorten_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/services/interface/i_url_history_repository.dart';
part 'url_history_viewmodel.g.dart';

class URLHistoryViewModel = _URLHistoryViewModelBase with _$URLHistoryViewModel;

abstract class _URLHistoryViewModelBase with Store {
  final IURLHistoryRepository iurlHistoryRepository;
  _URLHistoryViewModelBase({required this.iurlHistoryRepository});

  @action
  Future<void> deleteURLHistoryHive(int index) async {
    await iurlHistoryRepository.setDeleteHiveURLHistory(index);
  }

  @action
  Future<void> setUpdateCopiedButton(int index,
      {required URLHistoryHiveModel data}) async {
    await iurlHistoryRepository.isCopiedButtonControlHiveUpdate(index,
        data: URLHistoryHiveModel(
          code: data.code,
          copiedButton: true,
          fullShareLink: data.fullShareLink,
          fullShortLink2: data.fullShortLink2,
          fullShortLink3: data.fullShortLink3,
          fullShortLink: data.fullShortLink,
          originalLink: data.originalLink,
          shareLink: data.shareLink,
          shortLink2: data.shortLink2,
          shortLink3: data.shortLink3,
          shortLink: data.shortLink,
        ));
  }

  @action
  Color? copyButtonBackgroundColorControl(bool isCopied) {
    if (isCopied) {
      return Colors.purple;
    } else {
      return Color(0XFF64cccd);
    }
  }

  @action
  String copyButtonTitleControl(bool isCopied) {
    if (isCopied) {
      return "url_short_history.copied_button";
    } else {
      return "url_short_history.copy_button";
    }
  }
}
