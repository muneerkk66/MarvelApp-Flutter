import 'package:freezed_annotation/freezed_annotation.dart';

part 'marvel_item.freezed.dart';
part 'marvel_item.g.dart';

@freezed
class MarvelItem with _$MarvelItem {
  const factory MarvelItem(String resourceURI, String name) = _MarvelItem;
  factory MarvelItem.fromJson(Map<String, dynamic> json) =>
      _$MarvelItemFromJson(json);
}
