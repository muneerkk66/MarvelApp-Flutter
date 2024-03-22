import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls.freezed.dart';
part 'urls.g.dart';

@freezed
class Urls with _$Urls {
  factory Urls(String type, String url) = _Urls;
  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}
