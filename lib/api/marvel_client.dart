import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:retrofit/retrofit.dart';

part 'marvel_client.g.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com';

@RestApi(baseUrl: baseUrl)
@singleton
abstract class MarvelClient {
  @factoryMethod
  factory MarvelClient(Dio dio) = _MarvelClient;

  @GET("/todos/1/")
  Future<Character> getCharacters(
    @CancelRequest() CancelToken cancelToken,
  );
}
