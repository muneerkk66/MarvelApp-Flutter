import 'package:flutter/material.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/utils/colors.dart';
import 'package:marvel_app/utils/strings.dart';

class HeroesDetailScreen extends StatefulWidget {
  final Character character;

  const HeroesDetailScreen({Key? key, required this.character})
      : super(key: key);

  @override
  State<HeroesDetailScreen> createState() => _HeroesDetailScreenState();
}

class _HeroesDetailScreenState extends State<HeroesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.surface,
        appBar: AppBar(
          title: const Text(Strings.homeTitle),
        ),
        body: Container(color: Colors.red));
  }
}
