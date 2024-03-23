// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicsImpl _$$ComicsImplFromJson(Map<String, dynamic> json) => _$ComicsImpl(
      json['available'] as int,
      json['collectionURI'] as String,
      IList<MarvelItem>.fromJson(json['items'],
          (value) => MarvelItem.fromJson(value as Map<String, dynamic>)),
      json['returned'] as int,
    );

Map<String, dynamic> _$$ComicsImplToJson(_$ComicsImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items.toJson(
        (value) => value,
      ),
      'returned': instance.returned,
    };
