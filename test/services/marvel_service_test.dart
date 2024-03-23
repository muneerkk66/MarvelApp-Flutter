import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/api/marvel_api.dart';
import 'package:marvel_app/domain/entities/common.dart';
import 'package:marvel_app/services/marvel_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../data/character_fakes.dart';
import '../data/marve_api_response_fakes.dart';

import 'marvel_service_test.mocks.dart';

@GenerateMocks([
  MarvelApi,
  Cancellable,
])
void main() {
  late MarvelApi api;
  late MarvelService service;

  void init() {
    api = MockMarvelApi();
    service = MarvelService(api);
  }

  setUp(init);

  test("check invokes api and returns appropriate value", () async {
    when(api.getCharacters()).thenReturn(
        Cancellable(Future.value(marvelApiResponse), CancelToken()));
    final characters = await service.getCharacters().call;
    assert(characters[0] == character);
  });
}
