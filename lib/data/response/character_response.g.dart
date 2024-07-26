// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelApiResponseImpl _$$MarvelApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MarvelApiResponseImpl(
      (json['characters'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MarvelApiResponseImplToJson(
        _$MarvelApiResponseImpl instance) =>
    <String, dynamic>{
      'characters': instance.characters,
    };
