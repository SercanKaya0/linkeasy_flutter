import 'package:hive/hive.dart';
part 'url_history_hive_model.g.dart';

@HiveType(typeId: 0)
class URLHistoryHiveModel {
  @HiveField(1)
  String? code;
  @HiveField(2)
  String? shortLink;
  @HiveField(3)
  String? fullShortLink;
  @HiveField(4)
  String? shortLink2;
  @HiveField(5)
  String? fullShortLink2;
  @HiveField(6)
  String? shortLink3;
  @HiveField(7)
  String? fullShortLink3;
  @HiveField(8)
  String? shareLink;
  @HiveField(9)
  String? fullShareLink;
  @HiveField(10)
  String? originalLink;
  URLHistoryHiveModel(
      {this.code,
      this.fullShareLink,
      this.fullShortLink,
      this.fullShortLink2,
      this.fullShortLink3,
      this.originalLink,
      this.shareLink,
      this.shortLink,
      this.shortLink2,
      this.shortLink3});
}
