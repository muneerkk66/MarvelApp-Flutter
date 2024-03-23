import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'marvel_item.dart';

part 'stories.freezed.dart';
part 'stories.g.dart';

@freezed
class Stories with _$Stories {
  factory Stories(int available, String collectionURI, IList<MarvelItem> items,
      int returned) = _Stories;
  factory Stories.fromJson(Map<String, dynamic> json) =>
      _$StoriesFromJson(json);
}
