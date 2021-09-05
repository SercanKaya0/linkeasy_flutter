import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';

abstract class IURLHistoryRepository {
  Future<void> setDeleteHiveURLHistory(int index);
  Future<void> isCopiedButtonControlHiveUpdate(int index,{required URLHistoryHiveModel data});
}
