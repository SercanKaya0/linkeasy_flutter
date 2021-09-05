import 'package:shortly_flutter/core/network/interfaces/base_network_model.dart';

class URLShortenModel extends BaseNetworkModel {
  bool? ok;
  URLShortenModelResult? result;

  URLShortenModel({this.ok, this.result});
  factory URLShortenModel.fromJson(Map<String, dynamic> json) =>
      URLShortenModel(
        ok: json["ok"] == null ? null : json["ok"],
        result: json["result"] == null
            ? null
            : URLShortenModelResult.fromJson(json["result"]),
      );
  @override
  fromJson(Map<String, dynamic> json) {
    return URLShortenModel.fromJson(json);
  }
}

class URLShortenModelResult extends BaseNetworkModel {
  String? code;
  String? shortLink;
  String? fullShortLink;
  String? shortLink2;
  String? fullShortLink2;
  String? shortLink3;
  String? fullShortLink3;
  String? shareLink;
  String? fullShareLink;
  String? originalLink;
  URLShortenModelResult(
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

  factory URLShortenModelResult.fromJson(Map<String, dynamic> json) =>
      URLShortenModelResult(
        code: json["code"] == null ? null : json["code"],
        shortLink: json["short_link"] == null ? null : json["short_link"],
        fullShortLink:
            json["full_short_link"] == null ? null : json["full_short_link"],
        shortLink2: json["short_link2"] == null ? null : json["short_link2"],
        fullShortLink2:
            json["full_short_link2"] == null ? null : json["full_short_link2"],
        shortLink3: json["short_link3"] == null ? null : json["short_link3"],
        fullShortLink3:
            json["full_short_link3"] == null ? null : json["full_short_link3"],
        shareLink: json["share_link"] == null ? null : json["share_link"],
        fullShareLink:
            json["full_share_link"] == null ? null : json["full_share_link"],
        originalLink:
            json["original_link"] == null ? null : json["original_link"],
      );
  @override
  fromJson(Map<String, dynamic> json) {
    return URLShortenModelResult.fromJson(json);
  }
}
