// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  int get available => throw _privateConstructorUsedError;
  String get collectionURI => throw _privateConstructorUsedError;
  IList<MarvelItem> get items => throw _privateConstructorUsedError;
  int get returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      IList<MarvelItem> items,
      int returned});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

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
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
          _$SeriesImpl value, $Res Function(_$SeriesImpl) then) =
      __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int available,
      String collectionURI,
      IList<MarvelItem> items,
      int returned});
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
      _$SeriesImpl _value, $Res Function(_$SeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? collectionURI = null,
    Object? items = null,
    Object? returned = null,
  }) {
    return _then(_$SeriesImpl(
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
class _$SeriesImpl implements _Series {
  _$SeriesImpl(this.available, this.collectionURI, this.items, this.returned);

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

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
    return 'Series(available: $available, collectionURI: $collectionURI, items: $items, returned: $returned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
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
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(
      this,
    );
  }
}

abstract class _Series implements Series {
  factory _Series(final int available, final String collectionURI,
      final IList<MarvelItem> items, final int returned) = _$SeriesImpl;

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

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
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
