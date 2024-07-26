import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/blocs/home_bloc.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/core/error_handler.dart';
import 'package:marvel_app/core/load_state.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';
import 'package:marvel_app/domain/usecase/fetch_character_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../data/character_fakes.dart';
import 'home_bloc_test.mocks.dart';

@GenerateMocks([
  FetchCharacterUseCase,
  ErrorHandler,
  Cancellable,
])
void main() {
  final initState = HomeData();
  final contentFuture = Future.value(character);
  final exception = Exception("Socket timeout");
  final successCancellable = Cancellable(contentFuture, CancelToken());
  final errorMessage = "No Network connection";

  late FetchCharacterUseCase useCase;
  late ErrorHandler handler;

  ///
  /// Note: Future.error directive causes a crash almost immediately.
  /// The trick is to use `thenAnswer` to delay its evaluation to invocation time
  ///
  Cancellable<Character> getFailure(Exception e) {
    return Cancellable(Future<Character>.error(e), CancelToken());
  }

  void init() {
    useCase = MockFetchCharacterUseCase();
    handler = MockErrorHandler();
  }

  // This function ensures init is called before every test runs.
  setUp(init);

  group('initialization', () {
    blocTest<HomeBloc, HomeData>(
      'emits characters when initialized and service provides data',
      build: () {
        when(useCase.execute()).thenReturn(successCancellable);
        return HomeBloc(useCase, handler);
      },
      act: (it) => it.add(HomeEvent.init()),
      expect: () => <HomeData>[
        initState.copyWith(loadState: LoadState.loading),
        initState.copyWith(
            loadState: LoadState.data, characters: [character].lock)
      ],
    );

    blocTest<HomeBloc, HomeData>(
      'emits error with message when service throws an exception',
      build: () {
        when(useCase.execute()).thenAnswer((i) => getFailure(exception));
        when(handler.getErrorMessage(exception)).thenReturn(errorMessage);
        return HomeBloc(useCase, handler);
      },
      act: (it) => it.add(HomeEvent.init()),
      expect: () => <HomeData>[
        initState.copyWith(loadState: LoadState.loading),
        initState.copyWith(
            loadState: LoadState.error, errorMessage: errorMessage)
      ],
    );
  });

  group('retry', () {
    blocTest<HomeBloc, HomeData>(
      'emits characters when retried service provides data',
      build: () {
        when(useCase.execute()).thenReturn(successCancellable);
        return HomeBloc(useCase, handler);
      },
      act: (it) => it.add(HomeEvent.retry()),
      expect: () => <HomeData>[
        initState.copyWith(loadState: LoadState.loading),
        initState.copyWith(
            loadState: LoadState.data, characters: [character].lock)
      ],
    );

    blocTest<HomeBloc, HomeData>(
      'emits error with message after retrying when service throws an exception',
      build: () {
        when(useCase.execute()).thenAnswer((i) => getFailure(exception));
        when(handler.getErrorMessage(exception)).thenReturn(errorMessage);
        return HomeBloc(useCase, handler);
      },
      act: (it) => it.add(HomeEvent.retry()),
      expect: () => <HomeData>[
        initState.copyWith(loadState: LoadState.loading),
        initState.copyWith(
            loadState: LoadState.error, errorMessage: errorMessage)
      ],
    );
  });
}
