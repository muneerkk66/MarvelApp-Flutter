import 'package:flutter/material.dart';
import 'package:marvel_app/api/entities/character.dart';
import 'package:marvel_app/api/entities/thumbnail.dart';
import 'package:marvel_app/ui/home/components/character_image.dart';
import 'package:marvel_app/ui/home/components/character_info.dart';
import 'package:marvel_app/ui/shared/touch_effects.dart';
import 'package:marvel_app/utils/dimensions.dart';

class CharacterItem extends StatelessWidget {
  final Character character;
  final bool isLeftItem;
  final VoidCallback onTap;

  const CharacterItem({
    Key? key,
    required this.character,
    required this.isLeftItem,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(Dimens.space_normal);
    return RippleEffect(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
            left: isLeftItem ? 0 : Dimens.space_normal,
            right: !isLeftItem ? 0 : Dimens.space_normal,
            bottom: Dimens.space_large),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(radius),
          child: Stack(
            children: <Widget>[
              CharacterImage(
                image: character.thumbnail.landscape,
                characterId: character.id,
              ),
              CharacterInfo(character: character)
            ],
          ),
        ),
      ),
    );
  }
}
