// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
      json['available'] as int,
      json['collectionURI'] as String,
      IList<MarvelItem>.fromJson(json['items'],
          (value) => MarvelItem.fromJson(value as Map<String, dynamic>)),
      json['returned'] as int,
    );

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items.toJson(
        (value) => value,
      ),
      'returned': instance.returned,
    };
