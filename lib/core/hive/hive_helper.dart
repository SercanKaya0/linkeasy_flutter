import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shortly_flutter/app/screens/url_short_history/model/url_history_hive_model.dart';

// ! HELPER
// ! HİVE

// * Cihaz deposuna yönelik işlemlerin yapıldığı yardımcı class. Hive paketini kullanır.
class HiveHelper {
  static final HiveHelper instance = HiveHelper();
  final String urlHistory = "hive_url_history";

  // * Hive paketini init eder.
  Future<void> initHiveFlutter() async {
    await Hive.initFlutter();
    // * App Settings Adapter init ediliyor.
    await HiveHelper.instance
        .registerHiveTypeAdapter(adapter: URLHistoryHiveModelAdapter());
    await HiveHelper.instance
        .hiveOpenBox<URLHistoryHiveModel>(boxName: urlHistory);
  }

  Future<void> registerHiveTypeAdapter<T>(
      {required TypeAdapter<T> adapter}) async {
    Hive.registerAdapter(adapter);
  }

  Future<Box<E>> hiveOpenBox<E>({required String boxName}) async {
    return await Hive.openBox<E>(boxName);
  }

  Future<List<T>> getAllData<T>({required String boxName}) async {
    var box = Hive.box<T>(boxName);
    return box.values.toList();
  }

  Future<T?> getHiveData<T>(
      {required String boxName, required dynamic key, T? defaultValue}) async {
    var box = Hive.box<T>(boxName);
    return box.get(key, defaultValue: defaultValue);
  }

  Future<int> addHiveData<T>({required String boxName, required T data}) async {
    var box = Hive.box<T>(boxName);
    return box.add(data);
  }

  Future<void> hivePutData<T>(
      {required String boxName, required dynamic key, required T value}) async {
    var box = Hive.box<T>(boxName);
    return box.put(key, value);
  }

  Future<ValueListenable<Box<T>>> hiveListenableData<T>(
      {required String boxName, List<dynamic>? keys}) async {
    var box = Hive.box<T>(boxName);
    return box.listenable(keys: keys);
  }
}
