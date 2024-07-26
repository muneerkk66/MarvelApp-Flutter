import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:marvel_app/inject/injector.dart';
import 'base_bloc.dart';

abstract class BaseState<Q extends BaseBloc<dynamic, dynamic>,
    T extends StatefulWidget> extends State<T> {
  late Q bloc;

  BaseState() {
    bloc = getIt.get<Q>();
  }
}
