// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$AppInjector extends AppInjector {
  @override
  void _registerMiscModules() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => ErrorHandler());
  }

  @override
  void _registerClientDependencies() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => ApiUtils());
  }

  @override
  void _registerClients() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => MarvelClient(c<Dio>()));
  }

  @override
  void _registerApis() {
    final KiwiContainer container = KiwiContainer();
    container
        .registerSingleton((c) => MarvelApi(c<MarvelClient>(), c<ApiUtils>()));
  }

  @override
  void _registerServices() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => MarvelService(c<MarvelApi>()));
  }

  @override
  void _registerRepositories() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton((c) => CharacterRepositoryImpl(c<MarvelApi>()));
  }

  @override
  void _registerUseCases() {
    final KiwiContainer container = KiwiContainer();
    container.registerSingleton(
        (c) => FetchCharacterUseCase(c<CharacterRepositoryImpl>()));
  }

  @override
  void _registerBlocProviders() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory(
        (c) => HomeBloc(c<FetchCharacterUseCase>(), c<ErrorHandler>()));
  }
}
