// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoriesImpl _$$StoriesImplFromJson(Map<String, dynamic> json) =>
    _$StoriesImpl(
      json['available'] as int,
      json['collectionURI'] as String,
      IList<MarvelItem>.fromJson(json['items'],
          (value) => MarvelItem.fromJson(value as Map<String, dynamic>)),
      json['returned'] as int,
    );

Map<String, dynamic> _$$StoriesImplToJson(_$StoriesImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items.toJson(
        (value) => value,
      ),
      'returned': instance.returned,
    };
