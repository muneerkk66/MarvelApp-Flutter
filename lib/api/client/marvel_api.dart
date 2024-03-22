import 'package:dio/dio.dart';
import 'package:marvel_app/api/client/api_utils.dart';
import 'package:marvel_app/api/client/marvel_client.dart';
import 'package:marvel_app/api/entities/character_response.dart';
import 'package:marvel_app/api/entities/common.dart';

class MarvelApi {
  final MarvelClient _client;
  final ApiUtils _utils;

  MarvelApi(this._client, this._utils);

  Cancellable<MarvelApiResponse> getCharacters() {
    final cancelToken = CancelToken();
    final res = _client.getCharacters(
        cancelToken, _utils.currentTimestamp, _utils.hash);
    return Cancellable(res, cancelToken);
  }
}
