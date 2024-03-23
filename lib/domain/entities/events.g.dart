// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsImpl _$$EventsImplFromJson(Map<String, dynamic> json) => _$EventsImpl(
      json['available'] as int,
      json['collectionURI'] as String,
      IList<MarvelItem>.fromJson(json['items'],
          (value) => MarvelItem.fromJson(value as Map<String, dynamic>)),
      json['returned'] as int,
    );

Map<String, dynamic> _$$EventsImplToJson(_$EventsImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items.toJson(
        (value) => value,
      ),
      'returned': instance.returned,
    };
