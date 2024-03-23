import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'marvel_item.dart';

part 'comics.freezed.dart';
part 'comics.g.dart';

@freezed
class Comics with _$Comics {
  factory Comics(int available, String collectionURI, IList<MarvelItem> items,
      int returned) = _Comics;

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);
}
