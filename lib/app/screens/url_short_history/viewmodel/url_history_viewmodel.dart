import 'package:mobx/mobx.dart';
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
}
