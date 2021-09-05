import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortly_flutter/core/network/interfaces/base_client_generator.dart';

part 'shortly_clients.freezed.dart';

@freezed
class ShortlyClients extends BaseClientGenerator with _$ShortlyClients {
  const ShortlyClients._() : super();
  const factory ShortlyClients.posts({Map<String, dynamic>? queryParameters}) =
      _Posts;

  @override
  String get baseURL => "https://api.shrtco.de/v2/";

  @override
  Map<String, dynamic>? get body {
    return this.maybeWhen(orElse: () => null);
  }

  @override
  Map<String, dynamic> get header => {"Content-Type": "application/json"};

  @override
  String get method {
    return this.maybeWhen<String>(orElse: () => "GET");
  }

  @override
  String get path {
    return this.when<String>(
      posts: (Map<String, dynamic>? queryParameters) => "shorten",
    );
  }

  @override
  Map<String, dynamic>? get queryParameters {
    return this.maybeWhen(
        orElse: () {},
        posts: (Map<String, dynamic>? queryParameters) => queryParameters);
  }
}
