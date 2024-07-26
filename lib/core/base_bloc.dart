import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  final List<CancelToken> _tokens = [];

  BaseBloc(State state) : super(state);

  @override
  Future<void> close() {
    for (final t in _tokens) {
      try {
        t.cancel();
      } catch (e) {
        print(e);
      }
    }

    return super.close();
  }
}

extension ApiLifecycle on CancelToken {
  void bindToLifecycle(BaseBloc<dynamic, dynamic> bloc) {
    bloc._tokens.add(this);
  }
}
