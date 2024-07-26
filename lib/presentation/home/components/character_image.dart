import 'package:flutter/material.dart';
import 'package:marvel_app/utils/dimensions.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CharacterImage extends StatelessWidget {
  final String image;

  const CharacterImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.cover,
        height: Dimens.toolbar_expanded,
        errorWidget: (context, url, error) => Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
