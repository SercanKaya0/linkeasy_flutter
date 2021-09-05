import 'package:shortly_flutter/app/screens/url_short/model/url_shorten_model.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/core/network/freezed/network_error.dart';
import 'package:shortly_flutter/core/network/freezed/result.dart';

abstract class IURLShortRepository {
  Future<Result<URLShortenModel, NetworkError>> shortenURL(
      Map<String, dynamic>? queryParameters);
  Future<void> saveHiveURLHistory({required URLHistoryHiveModel data});
}
