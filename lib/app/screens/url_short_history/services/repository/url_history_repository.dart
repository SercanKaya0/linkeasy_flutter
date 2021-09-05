import 'package:hive/hive.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/services/interface/i_url_history_repository.dart';
import 'package:shortly_flutter/core/hive/hive_helper.dart';

class URLHistoryRepository extends IURLHistoryRepository {
  @override
  Future<void> setDeleteHiveURLHistory(int index) async {
    await Hive.box<URLHistoryHiveModel>(HiveHelper.instance.urlHistory)
        .deleteAt(index);
  }

  @override
  Future<void> isCopiedButtonControlHiveUpdate(int index,
      {required URLHistoryHiveModel data}) async {
    await Hive.box<URLHistoryHiveModel>(HiveHelper.instance.urlHistory)
        .putAt(index, data);
  }
}
