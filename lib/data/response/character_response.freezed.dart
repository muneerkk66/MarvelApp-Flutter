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
  int get code => throw _privateConstructorUsedError;
  CharactersData get data => throw _privateConstructorUsedError;

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
  $Res call({int code, CharactersData data});

  $CharactersDataCopyWith<$Res> get data;
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
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharactersData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersDataCopyWith<$Res> get data {
    return $CharactersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({int code, CharactersData data});

  @override
  $CharactersDataCopyWith<$Res> get data;
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
    Object? code = null,
    Object? data = null,
  }) {
    return _then(_$MarvelApiResponseImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharactersData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarvelApiResponseImpl implements _MarvelApiResponse {
  _$MarvelApiResponseImpl(this.code, this.data);

  factory _$MarvelApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarvelApiResponseImplFromJson(json);

  @override
  final int code;
  @override
  final CharactersData data;

  @override
  String toString() {
    return 'MarvelApiResponse(code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarvelApiResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, data);

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
  factory _MarvelApiResponse(final int code, final CharactersData data) =
      _$MarvelApiResponseImpl;

  factory _MarvelApiResponse.fromJson(Map<String, dynamic> json) =
      _$MarvelApiResponseImpl.fromJson;

  @override
  int get code;
  @override
  CharactersData get data;
  @override
  @JsonKey(ignore: true)
  _$$MarvelApiResponseImplCopyWith<_$MarvelApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharactersData _$CharactersDataFromJson(Map<String, dynamic> json) {
  return _CharactersData.fromJson(json);
}

/// @nodoc
mixin _$CharactersData {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  IList<Character> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersDataCopyWith<CharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDataCopyWith<$Res> {
  factory $CharactersDataCopyWith(
          CharactersData value, $Res Function(CharactersData) then) =
      _$CharactersDataCopyWithImpl<$Res, CharactersData>;
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, IList<Character> results});
}

/// @nodoc
class _$CharactersDataCopyWithImpl<$Res, $Val extends CharactersData>
    implements $CharactersDataCopyWith<$Res> {
  _$CharactersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as IList<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersDataImplCopyWith<$Res>
    implements $CharactersDataCopyWith<$Res> {
  factory _$$CharactersDataImplCopyWith(_$CharactersDataImpl value,
          $Res Function(_$CharactersDataImpl) then) =
      __$$CharactersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset, int limit, int total, int count, IList<Character> results});
}

/// @nodoc
class __$$CharactersDataImplCopyWithImpl<$Res>
    extends _$CharactersDataCopyWithImpl<$Res, _$CharactersDataImpl>
    implements _$$CharactersDataImplCopyWith<$Res> {
  __$$CharactersDataImplCopyWithImpl(
      _$CharactersDataImpl _value, $Res Function(_$CharactersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? total = null,
    Object? count = null,
    Object? results = null,
  }) {
    return _then(_$CharactersDataImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as IList<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersDataImpl implements _CharactersData {
  _$CharactersDataImpl(
      this.offset, this.limit, this.total, this.count, this.results);

  factory _$CharactersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersDataImplFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  @override
  final IList<Character> results;

  @override
  String toString() {
    return 'CharactersData(offset: $offset, limit: $limit, total: $total, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDataImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, total, count,
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDataImplCopyWith<_$CharactersDataImpl> get copyWith =>
      __$$CharactersDataImplCopyWithImpl<_$CharactersDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersDataImplToJson(
      this,
    );
  }
}

abstract class _CharactersData implements CharactersData {
  factory _CharactersData(final int offset, final int limit, final int total,
      final int count, final IList<Character> results) = _$CharactersDataImpl;

  factory _CharactersData.fromJson(Map<String, dynamic> json) =
      _$CharactersDataImpl.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  int get total;
  @override
  int get count;
  @override
  IList<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$CharactersDataImplCopyWith<_$CharactersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
