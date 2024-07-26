import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:marvel_app/api/marvel_client.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/common.dart';

@singleton
class MarvelApi {
  final MarvelClient _client;

  MarvelApi(this._client);

  Cancellable<Character> getCharacters() {
    final cancelToken = CancelToken();
    final res = _client.getCharacters(cancelToken);

    return Cancellable(res, cancelToken);
  }
}
