import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:marvel_app/domain/entities/character.dart';

part 'character_response.freezed.dart';

part 'character_response.g.dart';

@freezed
class MarvelApiResponse with _$MarvelApiResponse {
  factory MarvelApiResponse(int code, CharactersData data) = _MarvelApiResponse;

  factory MarvelApiResponse.fromJson(Map<String, dynamic> json) =>
      _$MarvelApiResponseFromJson(json);
}

@freezed
class CharactersData with _$CharactersData {
  factory CharactersData(int offset, int limit, int total, int count,
      IList<Character> results) = _CharactersData;

  factory CharactersData.fromJson(Map<String, dynamic> json) =>
      _$CharactersDataFromJson(json);
}
