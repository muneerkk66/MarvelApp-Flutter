// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/marvel_api.dart' as _i6;
import '../api/marvel_client.dart' as _i5;
import '../blocs/home_bloc.dart' as _i10;
import '../core/error_handler.dart' as _i3;
import '../data/repository/character_repository_impl.dart' as _i7;
import '../domain/usecase/fetch_character_usecase.dart' as _i8;
import '../services/marvel_service.dart' as _i9;
import 'module.dart' as _i11;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.ErrorHandler>(() => const _i3.ErrorHandler());
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio());
  gh.singleton<_i5.MarvelClient>(() => _i5.MarvelClient(gh<_i4.Dio>()));
  gh.singleton<_i6.MarvelApi>(() => _i6.MarvelApi(gh<_i5.MarvelClient>()));
  gh.singleton<_i7.CharacterRepositoryImpl>(
      () => _i7.CharacterRepositoryImpl(gh<_i6.MarvelApi>()));
  gh.singleton<_i8.FetchCharacterUseCase>(
      () => _i8.FetchCharacterUseCase(gh<_i7.CharacterRepositoryImpl>()));
  gh.singleton<_i9.MarvelService>(() => _i9.MarvelService(gh<_i6.MarvelApi>()));
  gh.factory<_i10.HomeBloc>(() => _i10.HomeBloc(
        gh<_i8.FetchCharacterUseCase>(),
        gh<_i3.ErrorHandler>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i11.RegisterModule {}
