import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/blocs/home_bloc.dart';
import 'package:marvel_app/core/contracts/home_contract.dart';
import 'package:marvel_app/utils/dimensions.dart';
import 'package:marvel_app/utils/strings.dart';
import 'package:marvel_app/utils/styles.dart';

class HomeError extends StatelessWidget {
  final String message;

  const HomeError(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final bloc = context.read<HomeBloc>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text(
            Strings.errorTitle,
            style: TextStyles.textBold,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Dimens.space_large),
          Text(message, style: TextStyles.textNormal),
          const SizedBox(height: Dimens.space_xlarge),
          ElevatedButton(
            onPressed: () => bloc.add(const HomeEvent.retry()),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? Colors.grey
                      : null;
                },
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.space_xxlarge,
                vertical: Dimens.space_normal,
              ),
              child: Text(
                Strings.errorRetry,
                style: TextStyles.textNormal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
