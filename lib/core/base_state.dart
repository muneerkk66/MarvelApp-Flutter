import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:marvel_app/inject/injector.dart';
import 'base_bloc.dart';
import 'view_actions.dart';

abstract class BaseState<Q extends BaseBloc<dynamic, dynamic>,
    T extends StatefulWidget> extends State<T> {
  late Q bloc;
  StreamSubscription? viewActionSubscription;

  BaseState() {
    bloc = Injector.resolve();
    _initViewEvents();
  }

  void _initViewEvents() {
    viewActionSubscription = bloc.viewActions.listen((event) {
      onViewEvent(event);
    });
  }

  void onViewEvent(ViewAction event) {
    if (event is NavigateScreen) {
      onNavigationEvent(event.target);
    } else if (event is CloseScreen) {
      Navigator.pop(context);
    } else if (event is DisplayMessage) {
      // Display Message
    }
  }

  void onNavigationEvent(dynamic target) {}

  @override
  void dispose() {
    unawaited(viewActionSubscription?.cancel());
    bloc.close();
    super.dispose();
  }
}
