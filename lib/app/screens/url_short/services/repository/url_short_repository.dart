import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';
import 'package:shortly_flutter/core/hive/hive_helper.dart';

import '../../../../../core/network/freezed/network_error.dart';
import '../../../../../core/network/freezed/result.dart';
import '../../../../../core/network/layers/network_executer.dart';
import '../../../../clients/shortly_clients.dart';
import '../../model/url_shorten_model.dart';
import '../interface/i_urlshort_repository.dart';

class URLShortRepository extends IURLShortRepository {
  @override
  Future<Result<URLShortenModel, NetworkError>> shortenURL(
      Map<String, dynamic>? queryParameters) async {
    try {
      final response =
          await NetworkExecuter.execute<URLShortenModel, URLShortenModel>(
              route: ShortlyClients.posts(queryParameters: queryParameters),
              responseType: URLShortenModel());
      return await response.when(success: (data) {
        return Result.success(data);
      }, failure: (error) {
        return Result.failure(error);
      });
    } on DioError catch (dioError) {
      return Result.failure(NetworkError.request(error: dioError));
    }
  }

  @override
  Future<void> saveHiveURLHistory({required URLHistoryHiveModel data}) async {
    await HiveHelper.instance.addHiveData<URLHistoryHiveModel>(
        boxName: HiveHelper.instance.urlHistory, data: data);
  }
}
