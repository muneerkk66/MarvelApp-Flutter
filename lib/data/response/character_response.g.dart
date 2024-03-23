// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarvelApiResponseImpl _$$MarvelApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MarvelApiResponseImpl(
      json['code'] as int,
      CharactersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarvelApiResponseImplToJson(
        _$MarvelApiResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$CharactersDataImpl _$$CharactersDataImplFromJson(Map<String, dynamic> json) =>
    _$CharactersDataImpl(
      json['offset'] as int,
      json['limit'] as int,
      json['total'] as int,
      json['count'] as int,
      IList<Character>.fromJson(json['results'],
          (value) => Character.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$CharactersDataImplToJson(
        _$CharactersDataImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results.toJson(
        (value) => value,
      ),
    };
