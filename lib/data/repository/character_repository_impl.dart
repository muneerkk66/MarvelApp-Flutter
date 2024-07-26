import 'package:injectable/injectable.dart';
import 'package:marvel_app/api/marvel_api.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';
import 'package:marvel_app/domain/repositories/character_repository.dart';

@singleton
class CharacterRepositoryImpl extends CharacterRepository {
  CharacterRepositoryImpl(this.api);
  final MarvelApi api;

  @override
  Cancellable<Character> fetchCharacter() {
    final cancellable = api.getCharacters();
    return Cancellable(
        cancellable.call.then((value) => value), cancellable.token);
  }
}
