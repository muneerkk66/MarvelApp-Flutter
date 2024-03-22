import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/base_bloc.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/core/error_handler.dart';
import 'package:marvel_app/core/load_state.dart';
import 'package:marvel_app/services/marvel_service.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeData> {
  final MarvelService _service;
  final ErrorHandler _errorHandler;

  HomeBloc(this._service, this._errorHandler) : super(HomeData()) {
    on<Init>(initialize);
    on<Retry>(initialize);
    on<Error>(handleError);
    on<CharactersData>(handleCharactersData);
  }

  void handleError(Error event, Emitter<HomeData> emit) {
    emit(state.copyWith(
        loadState: LoadState.error, errorMessage: event.errorMessage));
  }

  void handleCharactersData(CharactersData event, Emitter<HomeData> emit) {
    emit(state.copyWith(
        loadState: LoadState.data, characters: event.characters));
  }

  void initialize(HomeEvent event, Emitter<HomeData> emit) {
    emit(state.copyWith(loadState: LoadState.loading));
    _fetchCharacters();
  }

  void _fetchCharacters() {
    _service.getCharacters()
      ..call
          .then((value) => add(HomeEvent.charactersData(value)))
          .catchError((Object error) {
        add(HomeEvent.error(_errorHandler.getErrorMessage(error)));
      })
      ..token.bindToLifecycle(this);
  }
}
