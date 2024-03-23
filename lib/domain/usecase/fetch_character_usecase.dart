import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:marvel_app/data/repository/character_repository_impl.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';

class FetchCharacterUseCase {
  final CharacterRepositoryImpl _repository;

  FetchCharacterUseCase(this._repository);

  Cancellable<IList<Character>> execute() => _repository.fetchCharacter();
}
