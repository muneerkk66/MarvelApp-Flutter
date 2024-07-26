import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/core/base_bloc.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/core/error_handler.dart';
import 'package:marvel_app/core/load_state.dart';
import 'package:marvel_app/domain/usecase/fetch_character_usecase.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeData> {
  final FetchCharacterUseCase _useCase;
  final ErrorHandler _errorHandler;

  HomeBloc(this._useCase, this._errorHandler) : super(HomeData()) {
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
    _useCase.execute()
      ..call
          .then((value) => add(HomeEvent.charactersData([value].toIList())))
          .catchError((Object error) {
        add(HomeEvent.error(_errorHandler.getErrorMessage(error)));
      })
      ..token.bindToLifecycle(this);
  }
}
