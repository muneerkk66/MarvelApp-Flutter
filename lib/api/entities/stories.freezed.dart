// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stories _$StoriesFromJson(Map<String, dynamic> json) {
  return _Stories.fromJson(json);
}

/// @nodoc
mixin _$Stories {
  int get available => throw _privateConstructorUsedError;
  String get collectionURI => throw _privateConstructorUsedError;
  IList<MarvelItem> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoriesCopyWith<Stories> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesCopyWith<$Res> {
  factory $StoriesCopyWith(Stories value, $Res Function(Stories) then) =
      _$StoriesCopyWithImpl<$Res, Stories>;
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      IList<MarvelItem> items,
      int returned});
}

/// @nodoc
class _$StoriesCopyWithImpl<$Res, $Val extends Stories>
    implements $StoriesCopyWith<$Res> {
  _$StoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionURI = null,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_value.copyWith(
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      collectionURI: null == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<MarvelItem>,
      returned: null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoriesImplCopyWith<$Res> implements $StoriesCopyWith<$Res> {
  factory _$$StoriesImplCopyWith(
          _$StoriesImpl value, $Res Function(_$StoriesImpl) then) =
      __$$StoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      IList<MarvelItem> items,
      int returned});
}

/// @nodoc
class __$$StoriesImplCopyWithImpl<$Res>
    extends _$StoriesCopyWithImpl<$Res, _$StoriesImpl>
    implements _$$StoriesImplCopyWith<$Res> {
  __$$StoriesImplCopyWithImpl(
      _$StoriesImpl _value, $Res Function(_$StoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionURI = null,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$StoriesImpl(
      null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      null == collectionURI
          ? _value.collectionURI
          : collectionURI // ignore: cast_nullable_to_non_nullable
              as String,
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as IList<MarvelItem>,
      null == returned
          ? _value.returned
          : returned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoriesImpl implements _Stories {
  _$StoriesImpl(this.available, this.collectionURI, this.items, this.returned);

  factory _$StoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoriesImplFromJson(json);

  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final IList<MarvelItem> items;
  @override
  final int returned;

  @override
  String toString() {
    return 'Stories(available: $available, collectionURI: $collectionURI, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.collectionURI, collectionURI) ||
                other.collectionURI == collectionURI) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.returned, returned) ||
                other.returned == returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, collectionURI,
      const DeepCollectionEquality().hash(items), returned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      __$$StoriesImplCopyWithImpl<_$StoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoriesImplToJson(
      this,
    );
  }
}

abstract class _Stories implements Stories {
  factory _Stories(final int available, final String collectionURI,
      final IList<MarvelItem> items, final int returned) = _$StoriesImpl;

  factory _Stories.fromJson(Map<String, dynamic> json) = _$StoriesImpl.fromJson;

  @override
  int get available;
  @override
  String get collectionURI;
  @override
  IList<MarvelItem> get items;
  @override
  int get returned;
  @override
  @JsonKey(ignore: true)
  _$$StoriesImplCopyWith<_$StoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
