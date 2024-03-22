// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      json['id'] as int,
      json['name'] as String,
      json['description'] as String,
      json['modified'] as String,
      Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      json['resourceURI'] as String,
      json['comics'] == null
          ? null
          : Comics.fromJson(json['comics'] as Map<String, dynamic>),
      json['series'] == null
          ? null
          : Series.fromJson(json['series'] as Map<String, dynamic>),
      json['stories'] == null
          ? null
          : Stories.fromJson(json['stories'] as Map<String, dynamic>),
      json['events'] == null
          ? null
          : Events.fromJson(json['events'] as Map<String, dynamic>),
      IList<Urls>.fromJson(json['urls'],
          (value) => Urls.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'thumbnail': instance.thumbnail,
      'resourceURI': instance.resourceURI,
      'comics': instance.comics,
      'series': instance.series,
      'stories': instance.stories,
      'events': instance.events,
      'urls': instance.urls.toJson(
        (value) => value,
      ),
    };
