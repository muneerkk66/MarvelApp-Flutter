import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/data/repository/character_repository_impl.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';

@singleton
class FetchCharacterUseCase {
  final CharacterRepositoryImpl _repository;

  FetchCharacterUseCase(this._repository);

  Cancellable<Character> execute() => _repository.fetchCharacter();
}
