import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/core/load_state.dart';

part 'home_contract.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;

  const factory HomeEvent.retry() = Retry;

  const factory HomeEvent.error(String? errorMessage) = Error;

  const factory HomeEvent.charactersData(IList<Character> characters) =
      CharactersData;
}

///
/// ViewState for the Screen's view state
///
@freezed
class HomeData with _$HomeData {
  factory HomeData(
          {@Default(LoadState.empty) LoadState loadState,
          String? errorMessage,
          @Default(IListConst<Character>([])) IList<Character> characters}) =
      _HomeData;
}
