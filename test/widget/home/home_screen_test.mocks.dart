// Mocks generated by Mockito 5.4.4 from annotations
// in marvel_app/test/widget/home/home_screen_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_bloc/flutter_bloc.dart' as _i5;
import 'package:marvel_app/blocs/home_bloc.dart' as _i3;
import 'package:marvel_app/core/contracts/home_contract.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeHomeData_0 extends _i1.SmartFake implements _i2.HomeData {
  _FakeHomeData_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeBloc extends _i1.Mock implements _i3.HomeBloc {
  MockHomeBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.HomeData get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeHomeData_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.HomeData);

  @override
  _i4.Stream<_i2.HomeData> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i2.HomeData>.empty(),
      ) as _i4.Stream<_i2.HomeData>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void handleError(
    _i2.Error? event,
    _i5.Emitter<_i2.HomeData>? emit,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #handleError,
          [
            event,
            emit,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void handleCharactersData(
    _i2.CharactersData? event,
    _i5.Emitter<_i2.HomeData>? emit,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #handleCharactersData,
          [
            event,
            emit,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void initialize(
    _i2.HomeEvent? event,
    _i5.Emitter<_i2.HomeData>? emit,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #initialize,
          [
            event,
            emit,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  void add(_i2.HomeEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i2.HomeEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i2.HomeData? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i2.HomeEvent>(
    _i5.EventHandler<E, _i2.HomeData>? handler, {
    _i5.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(_i5.Transition<_i2.HomeEvent, _i2.HomeData>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i5.Change<_i2.HomeData>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
