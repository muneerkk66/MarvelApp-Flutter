import 'package:dio/dio.dart';
import 'package:marvel_app/data/response/character_response.dart';
import 'package:retrofit/retrofit.dart';

part 'marvel_client.g.dart';

const baseUrl = 'https://gateway.marvel.com/v1/public/';

@RestApi(baseUrl: baseUrl)
abstract class MarvelClient {
  factory MarvelClient(Dio dio) = _MarvelClient;

  @GET("/characters")
  Future<MarvelApiResponse> getCharacters(
      @CancelRequest() CancelToken cancelToken,
      @Query("ts") String ts,
      @Query("hash") String hash,
      {@Query("apikey") String apiKey = MarvelClient.apiKey});

  static const clientId = "a0729b5c16d407c88ac13f2e072c334f6c6f62ae";
  static const apiKey = "3ad1d3cb617f6003c2a2ae853daa4eef";
}
