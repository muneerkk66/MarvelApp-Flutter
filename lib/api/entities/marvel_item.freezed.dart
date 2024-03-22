// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marvel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarvelItem _$MarvelItemFromJson(Map<String, dynamic> json) {
  return _MarvelItem.fromJson(json);
}

/// @nodoc
mixin _$MarvelItem {
  String get resourceURI => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelItemCopyWith<MarvelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelItemCopyWith<$Res> {
  factory $MarvelItemCopyWith(
          MarvelItem value, $Res Function(MarvelItem) then) =
      _$MarvelItemCopyWithImpl<$Res, MarvelItem>;
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class _$MarvelItemCopyWithImpl<$Res, $Val extends MarvelItem>
    implements $MarvelItemCopyWith<$Res> {
  _$MarvelItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      resourceURI: null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarvelItemImplCopyWith<$Res>
    implements $MarvelItemCopyWith<$Res> {
  factory _$$MarvelItemImplCopyWith(
          _$MarvelItemImpl value, $Res Function(_$MarvelItemImpl) then) =
      __$$MarvelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resourceURI, String name});
}

/// @nodoc
class __$$MarvelItemImplCopyWithImpl<$Res>
    extends _$MarvelItemCopyWithImpl<$Res, _$MarvelItemImpl>
    implements _$$MarvelItemImplCopyWith<$Res> {
  __$$MarvelItemImplCopyWithImpl(
      _$MarvelItemImpl _value, $Res Function(_$MarvelItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceURI = null,
    Object? name = null,
  }) {
    return _then(_$MarvelItemImpl(
      null == resourceURI
          ? _value.resourceURI
          : resourceURI // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarvelItemImpl implements _MarvelItem {
  const _$MarvelItemImpl(this.resourceURI, this.name);

  factory _$MarvelItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarvelItemImplFromJson(json);

  @override
  final String resourceURI;
  @override
  final String name;

  @override
  String toString() {
    return 'MarvelItem(resourceURI: $resourceURI, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelItemImpl &&
            (identical(other.resourceURI, resourceURI) ||
                other.resourceURI == resourceURI) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resourceURI, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarvelItemImplCopyWith<_$MarvelItemImpl> get copyWith =>
      __$$MarvelItemImplCopyWithImpl<_$MarvelItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarvelItemImplToJson(
      this,
    );
  }
}

abstract class _MarvelItem implements MarvelItem {
  const factory _MarvelItem(final String resourceURI, final String name) =
      _$MarvelItemImpl;

  factory _MarvelItem.fromJson(Map<String, dynamic> json) =
      _$MarvelItemImpl.fromJson;

  @override
  String get resourceURI;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MarvelItemImplCopyWith<_$MarvelItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
