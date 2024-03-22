import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail.freezed.dart';
part 'thumbnail.g.dart';

@freezed
class Thumbnail with _$Thumbnail {
  factory Thumbnail(String path, String extension) = _Thumbnail;
  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

extension ImageUrlUtils on Thumbnail {
  String get small => "$path/portrait_small.jpg";

  String get normal => "$path/portrait_medium.jpg";

  String get large => "$path/portrait_uncanny.jpg";

  String get landscape => "$path/landscape_incredible.jpg";
}
