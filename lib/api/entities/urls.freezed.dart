// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return _Urls.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) =
      _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls>
    implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsImplCopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$UrlsImplCopyWith(
          _$UrlsImpl value, $Res Function(_$UrlsImpl) then) =
      __$$UrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url});
}

/// @nodoc
class __$$UrlsImplCopyWithImpl<$Res>
    extends _$UrlsCopyWithImpl<$Res, _$UrlsImpl>
    implements _$$UrlsImplCopyWith<$Res> {
  __$$UrlsImplCopyWithImpl(_$UrlsImpl _value, $Res Function(_$UrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$UrlsImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsImpl implements _Urls {
  _$UrlsImpl(this.type, this.url);

  factory _$UrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsImplFromJson(json);

  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'Urls(type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      __$$UrlsImplCopyWithImpl<_$UrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsImplToJson(
      this,
    );
  }
}

abstract class _Urls implements Urls {
  factory _Urls(final String type, final String url) = _$UrlsImpl;

  factory _Urls.fromJson(Map<String, dynamic> json) = _$UrlsImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UrlsImplCopyWith<_$UrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
