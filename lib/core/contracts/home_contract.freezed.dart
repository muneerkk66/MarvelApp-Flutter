// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(String? errorMessage) error,
    required TResult Function(IList<Character> characters) charactersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(IList<Character> characters)? charactersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(String? errorMessage)? error,
    TResult Function(IList<Character> characters)? charactersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Retry value) retry,
    required TResult Function(Error value) error,
    required TResult Function(CharactersData value) charactersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Retry value)? retry,
    TResult? Function(Error value)? error,
    TResult? Function(CharactersData value)? charactersData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Retry value)? retry,
    TResult Function(Error value)? error,
    TResult Function(CharactersData value)? charactersData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(String? errorMessage) error,
    required TResult Function(IList<Character> characters) charactersData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(IList<Character> characters)? charactersData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(String? errorMessage)? error,
    TResult Function(IList<Character> characters)? charactersData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Retry value) retry,
    required TResult Function(Error value) error,
    required TResult Function(CharactersData value) charactersData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Retry value)? retry,
    TResult? Function(Error value)? error,
    TResult? Function(CharactersData value)? charactersData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Retry value)? retry,
    TResult Function(Error value)? error,
    TResult Function(CharactersData value)? charactersData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements HomeEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetryImpl implements Retry {
  const _$RetryImpl();

  @override
  String toString() {
    return 'HomeEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(String? errorMessage) error,
    required TResult Function(IList<Character> characters) charactersData,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(IList<Character> characters)? charactersData,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(String? errorMessage)? error,
    TResult Function(IList<Character> characters)? charactersData,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Retry value) retry,
    required TResult Function(Error value) error,
    required TResult Function(CharactersData value) charactersData,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Retry value)? retry,
    TResult? Function(Error value)? error,
    TResult? Function(CharactersData value)? charactersData,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Retry value)? retry,
    TResult Function(Error value)? error,
    TResult Function(CharactersData value)? charactersData,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class Retry implements HomeEvent {
  const factory Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeEvent.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(String? errorMessage) error,
    required TResult Function(IList<Character> characters) charactersData,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(IList<Character> characters)? charactersData,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(String? errorMessage)? error,
    TResult Function(IList<Character> characters)? charactersData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Retry value) retry,
    required TResult Function(Error value) error,
    required TResult Function(CharactersData value) charactersData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Retry value)? retry,
    TResult? Function(Error value)? error,
    TResult? Function(CharactersData value)? charactersData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Retry value)? retry,
    TResult Function(Error value)? error,
    TResult Function(CharactersData value)? charactersData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HomeEvent {
  const factory Error(final String? errorMessage) = _$ErrorImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersDataImplCopyWith<$Res> {
  factory _$$CharactersDataImplCopyWith(_$CharactersDataImpl value,
          $Res Function(_$CharactersDataImpl) then) =
      __$$CharactersDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<Character> characters});
}

/// @nodoc
class __$$CharactersDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CharactersDataImpl>
    implements _$$CharactersDataImplCopyWith<$Res> {
  __$$CharactersDataImplCopyWithImpl(
      _$CharactersDataImpl _value, $Res Function(_$CharactersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharactersDataImpl(
      null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as IList<Character>,
    ));
  }
}

/// @nodoc

class _$CharactersDataImpl implements CharactersData {
  const _$CharactersDataImpl(this.characters);

  @override
  final IList<Character> characters;

  @override
  String toString() {
    return 'HomeEvent.charactersData(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDataImpl &&
            const DeepCollectionEquality()
                .equals(other.characters, characters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDataImplCopyWith<_$CharactersDataImpl> get copyWith =>
      __$$CharactersDataImplCopyWithImpl<_$CharactersDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() retry,
    required TResult Function(String? errorMessage) error,
    required TResult Function(IList<Character> characters) charactersData,
  }) {
    return charactersData(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? retry,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(IList<Character> characters)? charactersData,
  }) {
    return charactersData?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? retry,
    TResult Function(String? errorMessage)? error,
    TResult Function(IList<Character> characters)? charactersData,
    required TResult orElse(),
  }) {
    if (charactersData != null) {
      return charactersData(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Retry value) retry,
    required TResult Function(Error value) error,
    required TResult Function(CharactersData value) charactersData,
  }) {
    return charactersData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(Retry value)? retry,
    TResult? Function(Error value)? error,
    TResult? Function(CharactersData value)? charactersData,
  }) {
    return charactersData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Retry value)? retry,
    TResult Function(Error value)? error,
    TResult Function(CharactersData value)? charactersData,
    required TResult orElse(),
  }) {
    if (charactersData != null) {
      return charactersData(this);
    }
    return orElse();
  }
}

abstract class CharactersData implements HomeEvent {
  const factory CharactersData(final IList<Character> characters) =
      _$CharactersDataImpl;

  IList<Character> get characters;
  @JsonKey(ignore: true)
  _$$CharactersDataImplCopyWith<_$CharactersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeData {
  LoadState get loadState => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  IList<Character> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {LoadState loadState, String? errorMessage, IList<Character> characters});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadState = null,
    Object? errorMessage = freezed,
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      loadState: null == loadState
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as IList<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadState loadState, String? errorMessage, IList<Character> characters});
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadState = null,
    Object? errorMessage = freezed,
    Object? characters = null,
  }) {
    return _then(_$HomeDataImpl(
      loadState: null == loadState
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as LoadState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as IList<Character>,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements _HomeData {
  _$HomeDataImpl(
      {this.loadState = LoadState.empty,
      this.errorMessage,
      this.characters = const IListConst<Character>([])});

  @override
  @JsonKey()
  final LoadState loadState;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final IList<Character> characters;

  @override
  String toString() {
    return 'HomeData(loadState: $loadState, errorMessage: $errorMessage, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            (identical(other.loadState, loadState) ||
                other.loadState == loadState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadState, errorMessage,
      const DeepCollectionEquality().hash(characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  factory _HomeData(
      {final LoadState loadState,
      final String? errorMessage,
      final IList<Character> characters}) = _$HomeDataImpl;

  @override
  LoadState get loadState;
  @override
  String? get errorMessage;
  @override
  IList<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
