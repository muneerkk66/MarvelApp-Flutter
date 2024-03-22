import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'view_actions.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  final PublishSubject<ViewAction> _sideEffects = PublishSubject();

  Stream<ViewAction> get viewActions => _sideEffects.stream;

  final List<StreamSubscription> _subscriptions = [];
  final List<CancelToken> _tokens = [];

  BaseBloc(State state) : super(state);

  @protected
  void dispatchViewEvent(ViewAction target) {
    _sideEffects.add(target);
  }

  @override
  Future<void> close() {
    for (final t in _tokens) {
      try {
        t.cancel();
      } catch (e) {
        //log(error: e);
      }
    }
    for (final f in _subscriptions) {
      f.cancel();
    }
    _sideEffects.close();
    return super.close();
  }
}

extension StreamLifecycle on StreamSubscription {
  void bindToLifecycle(BaseBloc<dynamic, dynamic> bloc) {
    bloc._subscriptions.add(this);
  }
}

extension ApiLifecycle on CancelToken {
  void bindToLifecycle(BaseBloc<dynamic, dynamic> bloc) {
    bloc._tokens.add(this);
  }
}
