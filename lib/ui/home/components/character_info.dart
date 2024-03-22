import 'package:flutter/material.dart';
import 'package:marvel_app/api/entities/character.dart';
import 'package:marvel_app/utils/colors.dart';
import 'package:marvel_app/utils/dimensions.dart';
import 'package:marvel_app/utils/styles.dart';

class CharacterInfo extends StatelessWidget {
  final Character character;

  const CharacterInfo({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.keyline_main, vertical: Dimens.space_normal),
        decoration: const BoxDecoration(color: AppColors.secondary),
        child: Text(
          character.name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyles.textNormal,
        ),
      ),
    );
  }
}
