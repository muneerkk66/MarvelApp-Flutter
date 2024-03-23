import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';
import 'package:marvel_app/api/api_utils.dart';
import 'package:marvel_app/api/marvel_api.dart';
import 'package:marvel_app/api/marvel_client.dart';
import 'package:marvel_app/blocs/home_bloc.dart';
import 'package:marvel_app/core/error_handler.dart';
import 'package:marvel_app/core/event_bus.dart';
import 'package:marvel_app/data/repository/character_repository_impl.dart';
import 'package:marvel_app/domain/usecase/fetch_character_usecase.dart';
import 'package:marvel_app/inject/injector.dart';
import 'package:marvel_app/services/marvel_service.dart';

part 'app_injector.g.dart';

const String injectKeyHeader = "header";
const String injectKeyLogger = "logger";

abstract class AppInjector extends Injector {
  @override
  final container = KiwiContainer();

  @override
  Future<void> init() async {
    _$AppInjector()._configure();
  }

  void _configure() {
    // Configure modules here
    _configureBus();
    _configureNetworkModule();
    _registerClientDependencies();
    _registerClients();
    _registerApis();
    _registerServices();
    _registerRepositories();
    _registerUseCases();
    _registerMiscModules();
    _registerBlocProviders();
  }

  void _configureBus() {
    container.registerSingleton<EventBus>((c) => EventBusImpl());
  }

  /// Register Network modules
  void _configureNetworkModule() {
    _configureLogInterceptor();
    _configureHeaderInterceptor();
    _configureDio();
  }

  void _configureLogInterceptor() {
    container.registerSingleton<Interceptor>(
        (c) => LogInterceptor(
            request: true,
            requestBody: true,
            responseHeader: true,
            requestHeader: true,
            responseBody: true,
            error: true),
        name: injectKeyLogger);
  }

  void _configureHeaderInterceptor() {
    container.registerSingleton<Interceptor>(
        (c) => InterceptorsWrapper(onRequest:
                (RequestOptions options, RequestInterceptorHandler handler) {
              // Add request mods here or headers
              return handler.next(options);
            }),
        name: injectKeyHeader);
  }

  void _configureDio() {
    final baseOptions = BaseOptions(
      connectTimeout: Duration(seconds: 50),
      receiveTimeout: Duration(seconds: 30),
    );
    final dio = Dio(baseOptions);
    dio.interceptors.add(container.resolve(injectKeyHeader));
    if (!kReleaseMode) {
      dio.interceptors.add(container.resolve(injectKeyLogger));
    }
    container.registerSingleton((c) => dio);
  }

  /// Register Misc
  @Register.singleton(ErrorHandler)
  void _registerMiscModules();

  /// Register Client dependencies
  @Register.singleton(ApiUtils)
  void _registerClientDependencies();

  /// Register Clients
  @Register.singleton(MarvelClient)
  void _registerClients();

  /// Register Apis
  @Register.singleton(MarvelApi)
  void _registerApis();

  /// Register Services
  @Register.singleton(MarvelService)
  void _registerServices();

  /// Register Repositories
  @Register.singleton(CharacterRepositoryImpl)
  void _registerRepositories();

  /// Register UseCase
  @Register.singleton(FetchCharacterUseCase)
  void _registerUseCases();

  /// Register Bloc dependencies
  @Register.factory(HomeBloc)
  void _registerBlocProviders();

  static AppInjector instance() => _$AppInjector();
}
