import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:marvel_app/api/marvel_api.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';
import 'package:marvel_app/domain/repositories/character_repository.dart';

class CharacterRepositoryImpl extends CharacterRepository {
  CharacterRepositoryImpl(this.api);
  final MarvelApi api;

  @override
  Cancellable<IList<Character>> fetchCharacter() {
    final cancellable = api.getCharacters();
    return Cancellable(cancellable.call.then((value) => value.data.results),
        cancellable.token);
  }
}
