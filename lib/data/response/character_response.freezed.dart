// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarvelApiResponse _$MarvelApiResponseFromJson(Map<String, dynamic> json) {
  return _MarvelApiResponse.fromJson(json);
}

/// @nodoc
mixin _$MarvelApiResponse {
  List<Character> get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarvelApiResponseCopyWith<MarvelApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarvelApiResponseCopyWith<$Res> {
  factory $MarvelApiResponseCopyWith(
          MarvelApiResponse value, $Res Function(MarvelApiResponse) then) =
      _$MarvelApiResponseCopyWithImpl<$Res, MarvelApiResponse>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class _$MarvelApiResponseCopyWithImpl<$Res, $Val extends MarvelApiResponse>
    implements $MarvelApiResponseCopyWith<$Res> {
  _$MarvelApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarvelApiResponseImplCopyWith<$Res>
    implements $MarvelApiResponseCopyWith<$Res> {
  factory _$$MarvelApiResponseImplCopyWith(_$MarvelApiResponseImpl value,
          $Res Function(_$MarvelApiResponseImpl) then) =
      __$$MarvelApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$MarvelApiResponseImplCopyWithImpl<$Res>
    extends _$MarvelApiResponseCopyWithImpl<$Res, _$MarvelApiResponseImpl>
    implements _$$MarvelApiResponseImplCopyWith<$Res> {
  __$$MarvelApiResponseImplCopyWithImpl(_$MarvelApiResponseImpl _value,
      $Res Function(_$MarvelApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$MarvelApiResponseImpl(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarvelApiResponseImpl implements _MarvelApiResponse {
  _$MarvelApiResponseImpl(final List<Character> characters)
      : _characters = characters;

  factory _$MarvelApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarvelApiResponseImplFromJson(json);

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'MarvelApiResponse(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelApiResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarvelApiResponseImplCopyWith<_$MarvelApiResponseImpl> get copyWith =>
      __$$MarvelApiResponseImplCopyWithImpl<_$MarvelApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarvelApiResponseImplToJson(
      this,
    );
  }
}

abstract class _MarvelApiResponse implements MarvelApiResponse {
  factory _MarvelApiResponse(final List<Character> characters) =
      _$MarvelApiResponseImpl;

  factory _MarvelApiResponse.fromJson(Map<String, dynamic> json) =
      _$MarvelApiResponseImpl.fromJson;

  @override
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$MarvelApiResponseImplCopyWith<_$MarvelApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
