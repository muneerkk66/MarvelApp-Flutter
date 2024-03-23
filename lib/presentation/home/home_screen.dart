import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/domain/entities/character.dart';
import 'package:marvel_app/blocs/home_bloc.dart';
import 'package:marvel_app/core/base_state.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/core/load_state.dart';
import 'package:marvel_app/core/view_actions.dart';
import 'package:marvel_app/presentation/hero/hero_detail_screen.dart';
import 'package:marvel_app/presentation/home/components/character_item.dart';
import 'package:marvel_app/presentation/home/error_view.dart';
import 'package:marvel_app/utils/colors.dart';
import 'package:marvel_app/utils/dimensions.dart';
import 'package:marvel_app/utils/navigation_extensions.dart';
import 'package:marvel_app/utils/strings.dart';
import 'package:marvel_app/utils/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeBloc, HomeScreen> {
  _HomeScreenState() {
    _initViewEvents();
  }

  void _initViewEvents() {
    bloc.viewActions.listen((event) {
      onViewEvent(event);
    });
  }

  @override
  void initState() {
    bloc.add(const HomeEvent.init());
    super.initState();
  }

  /// For single shot events like displaying a toast message, navigating etc.
  @override
  void onViewEvent(ViewAction event) {
    switch (event.runtimeType) {
      case DisplayMessage:
        break;
      case NavigateScreen:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(Strings.homeTitle),
      ),
      body: BlocProvider(
        create: (BuildContext context) => bloc,
        child: BlocBuilder<HomeBloc, HomeData>(
            builder: (BuildContext context, HomeData data) {
          return Container(
              margin: const EdgeInsets.only(
                  left: Dimens.keyline_main,
                  right: Dimens.keyline_main,
                  top: Dimens.keyline_main),
              child: _HomeContent(data: data));
        }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _HomeContent extends StatelessWidget {
  final HomeData data;

  const _HomeContent({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (data.loadState) {
      case LoadState.loading:
        return const _LoaderSection();
      case LoadState.data:
        return _CharactersSection(data.characters);
      case LoadState.empty:
        return Container();
      case LoadState.error:
        return HomeError(data.errorMessage!);
    }
  }
}

class _LoaderSection extends StatelessWidget {
  const _LoaderSection();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          width: Dimens.progress_normal,
          height: Dimens.progress_normal,
          child: CircularProgressIndicator()),
    );
  }
}

class _CharactersSection extends StatelessWidget {
  final IList<Character> characters;

  const _CharactersSection(this.characters);

  @override
  Widget build(BuildContext context) {
    if (characters.isEmpty) {
      return const Center(
        child: Text(
          Strings.noItems,
          style: TextStyles.textNormal,
        ),
      );
    } else {
      return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final character = characters[index];
          return CharacterItem(
            character: character,
            isLeftItem: index % 2 == 0,
            onTap: () => context.push(
                builder: (context) => HeroesDetailScreen(character: character)),
          );
        },
        itemCount: characters.length,
      );
    }
  }
}
