import 'package:dio/dio.dart';
import 'package:marvel_app/api/api_utils.dart';
import 'package:marvel_app/api/marvel_client.dart';
import 'package:marvel_app/domain/entities/common.dart';
import 'package:marvel_app/data/response/character_response.dart';

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
