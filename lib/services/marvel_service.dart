import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/api/marvel_api.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';

@singleton
class MarvelService {
  final MarvelApi _api;

  const MarvelService(this._api);

  Cancellable<Character> getCharacters() {
    final request = _api.getCharacters();
    return Cancellable(request.call.then((res) => res), request.token);
  }
}
