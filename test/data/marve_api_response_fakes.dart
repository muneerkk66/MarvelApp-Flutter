import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:marvel_app/data/response/character_response.dart';

import 'character_fakes.dart';

final marvelApiResponse =
    MarvelApiResponse(200, CharactersData(0, 0, 1, 1, [character].lock));
