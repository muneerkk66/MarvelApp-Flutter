import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'comics.dart';
import 'events.dart';
import 'series.dart';
import 'stories.dart';
import 'thumbnail.dart';
import 'urls.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character(
      int id,
      String name,
      String description,
      String modified,
      Thumbnail thumbnail,
      String resourceURI,
      Comics? comics,
      Series? series,
      Stories? stories,
      Events? events,
      IList<Urls> urls) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
