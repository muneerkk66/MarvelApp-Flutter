import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/api/entities/character.dart';
import 'package:marvel_app/api/entities/thumbnail.dart';
import 'package:marvel_app/utils/colors.dart';
import 'package:marvel_app/utils/dimensions.dart';
import 'package:marvel_app/utils/strings.dart';
import 'package:marvel_app/utils/styles.dart';

class HeroesDetailScreen extends StatefulWidget {
  final Character character;

  const HeroesDetailScreen({Key? key, required this.character})
      : super(key: key);

  @override
  _HeroesDetailScreenState createState() => _HeroesDetailScreenState();
}

class _HeroesDetailScreenState extends State<HeroesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final hero = widget.character;
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            _CollapsingAppbar(
              imageUrl: hero.thumbnail.landscape,
              title: hero.name,
              characterId: hero.id,
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(Dimens.keyline_main),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.descriptionTitle,
                  style: TextStyles.textBold,
                ),
                SizedBox(
                  height: Dimens.space_small,
                ),
                Text(
                  hero.description.isNotEmpty
                      ? hero.description
                      : Strings.noContentPlaceholder,
                  style: TextStyles.textNormal,
                ),
                SizedBox(
                  height: Dimens.space_large,
                ),
                Text(
                  Strings.comicsTitle,
                  style: TextStyles.textNormal,
                ),
                if (hero.comics != null && hero.comics!.items.isNotEmpty)
                  ...hero.comics!.items.map((it) => Text(
                        it.name,
                        style: TextStyles.textNormal,
                      ))
                else
                  Text(
                    Strings.noContentPlaceholder,
                    style: TextStyles.textNormal,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CollapsingAppbar extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int characterId;

  const _CollapsingAppbar(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.characterId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: Dimens.toolbar_expanded,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.symmetric(
              horizontal: Dimens.space_large, vertical: Dimens.space_normal),
          centerTitle: true,
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyles.textBold,
            textAlign: TextAlign.center,
          ),
          background: Stack(
            children: [
              Hero(
                tag: characterId.toString(),
                child: SizedBox(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    height: Dimens.toolbar_expanded,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(gradient: Gradients.darkGradient),
              )
            ],
          )),
    );
  }
}
