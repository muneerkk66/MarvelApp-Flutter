import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';

abstract class CharacterRepository {
  Cancellable<IList<Character>> fetchCharacter();
}
