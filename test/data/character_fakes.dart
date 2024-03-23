import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/domain/entities/thumbnail.dart';

final _id = 1234;
final _name = "Iron man";
final _description = "Iron man Iron man does everything an iron can";
final _resource = "/iron-man";
final thumbnail = Thumbnail("/image", ".jpg");

final Character character = Character(_id, _name, _description, "", thumbnail,
    _resource, null, null, null, null, IList());
