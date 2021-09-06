import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortly_flutter/core/network/interfaces/base_client_generator.dart';

part 'shortly_clients.freezed.dart';

// * Tüm istekler burdan gitmektedir. Tüm parametre ayarları buradan yapılmaktadır.
// * const factory ShortlyClients.posts({Map<String, dynamic>? queryParameters}) = _Posts;
// * örnekteki gibi isimlendirmeler gibi istekler buradan ayarlanıp istekler gönderilebilir.

@freezed
class ShortlyClients extends BaseClientGenerator with _$ShortlyClients {
  const ShortlyClients._() : super();

  const factory ShortlyClients.posts({Map<String, dynamic>? queryParameters}) =
      _Posts;

// * istekler için base url;
  @override
  String get baseURL => "https://api.shrtco.de/v2/";

// * Eğer bodu gönderilecekse buradan ayarlanır. Aksi belirtilmez ise null olur.
  @override
  Map<String, dynamic>? get body {
    return this.maybeWhen(
        orElse: () => null,
        posts: (queryParameters) => {"" : ""});
  }

// * header alanı buradan ayarlanır.
  @override
  Map<String, dynamic> get header => {"Content-Type": "application/json"};

// * İsteğin methodu buradan gönderilir.
  @override
  String get method {
    return this.maybeWhen<String>(orElse: () => "GET");
  }

// * Base url'e eklenen path'dir.
  @override
  String get path {
    return this.when<String>(
      posts: (Map<String, dynamic>? queryParameters) => "shorten",
    );
  }

// * Query parametreleri buradan gönderilir.
  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
        orElse: () {},
        posts: (Map<String, dynamic>? queryParameters) => queryParameters);
  }
}
