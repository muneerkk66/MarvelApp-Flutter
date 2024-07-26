import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:marvel_app/domain/entities/character.dart';

part 'character_response.freezed.dart';

part 'character_response.g.dart';

@freezed
class MarvelApiResponse with _$MarvelApiResponse {
  factory MarvelApiResponse(List<Character> characters) = _MarvelApiResponse;

  factory MarvelApiResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelApiResponseFromJson(json);
}
