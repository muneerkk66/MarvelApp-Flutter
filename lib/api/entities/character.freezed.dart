// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  Thumbnail get thumbnail => throw _privateConstructorUsedError;
  String get resourceURI => throw _privateConstructorUsedError;
  Comics? get comics => throw _privateConstructorUsedError;
  Series? get series => throw _privateConstructorUsedError;
  Stories? get stories => throw _privateConstructorUsedError;
  Events? get events => throw _privateConstructorUsedError;
  IList<Urls> get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String modified,
      Thumbnail thumbnail,
      String resourceURI,
      Comics? comics,
      Series? series,
      Stories? stories,
      Events? events,
      IList<Urls> urls});

  $ThumbnailCopyWith<$Res> get thumbnail;
  $ComicsCopyWith<$Res>? get comics;
  $SeriesCopyWith<$Res>? get series;
  $StoriesCopyWith<$Res>? get stories;
  $EventsCopyWith<$Res>? get events;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? modified = null,
    Object? thumbnail = null,
    Object? resourceURI = null,
    Object? comics = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? urls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      comics: freezed == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as Comics?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      stories: freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Events?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as IList<Urls>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get thumbnail {
    return $ThumbnailCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicsCopyWith<$Res>? get comics {
    if (_value.comics == null) {
      return null;
    }

    return $ComicsCopyWith<$Res>(_value.comics!, (value) {
      return _then(_value.copyWith(comics: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoriesCopyWith<$Res>? get stories {
    if (_value.stories == null) {
      return null;
    }

    return $StoriesCopyWith<$Res>(_value.stories!, (value) {
      return _then(_value.copyWith(stories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventsCopyWith<$Res>? get events {
    if (_value.events == null) {
      return null;
    }

    return $EventsCopyWith<$Res>(_value.events!, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String modified,
      Thumbnail thumbnail,
      String resourceURI,
      Comics? comics,
      Series? series,
      Stories? stories,
      Events? events,
      IList<Urls> urls});

  @override
  $ThumbnailCopyWith<$Res> get thumbnail;
  @override
  $ComicsCopyWith<$Res>? get comics;
  @override
  $SeriesCopyWith<$Res>? get series;
  @override
  $StoriesCopyWith<$Res>? get stories;
  @override
  $EventsCopyWith<$Res>? get events;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? modified = null,
    Object? thumbnail = null,
    Object? resourceURI = null,
    Object? comics = freezed,
    Object? series = freezed,
    Object? stories = freezed,
    Object? events = freezed,
    Object? urls = null,
  }) {
    return _then(_$CharacterImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == comics
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as Comics?,
      freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      freezed == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as Stories?,
      freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as Events?,
      null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as IList<Urls>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  _$CharacterImpl(
      this.id,
      this.name,
      this.description,
      this.modified,
      this.thumbnail,
      this.resourceURI,
      this.comics,
      this.series,
      this.stories,
      this.events,
      this.urls);

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String modified;
  @override
  final Thumbnail thumbnail;
  @override
  final String resourceURI;
  @override
  final Comics? comics;
  @override
  final Series? series;
  @override
  final Stories? stories;
  @override
  final Events? events;
  @override
  final IList<Urls> urls;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, description: $description, modified: $modified, thumbnail: $thumbnail, resourceURI: $resourceURI, comics: $comics, series: $series, stories: $stories, events: $events, urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.comics, comics) || other.comics == comics) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.stories, stories) || other.stories == stories) &&
            (identical(other.events, events) || other.events == events) &&
            const DeepCollectionEquality().equals(other.urls, urls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      modified,
      thumbnail,
      resourceURI,
      comics,
      series,
      stories,
      events,
      const DeepCollectionEquality().hash(urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  factory _Character(
      final int id,
      final String name,
      final String description,
      final String modified,
      final Thumbnail thumbnail,
      final String resourceURI,
      final Comics? comics,
      final Series? series,
      final Stories? stories,
      final Events? events,
      final IList<Urls> urls) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get modified;
  @override
  Thumbnail get thumbnail;
  @override
  String get resourceURI;
  @override
  Comics? get comics;
  @override
  Series? get series;
  @override
  Stories? get stories;
  @override
  Events? get events;
  @override
  IList<Urls> get urls;
  @override
  @JsonKey(ignore: true)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
