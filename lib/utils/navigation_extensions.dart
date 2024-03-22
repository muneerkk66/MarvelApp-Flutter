import 'package:flutter/material.dart';

extension BuildContextNavigation on BuildContext {
  void pop<T extends Object>([T? result]) => Navigator.of(this).pop(result);

  Future<T?> push<T extends Object>({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) =>
      Navigator.of(this).push(MaterialPageRoute<T>(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog));

  Future<T?> pushReplacement<T extends Object>({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) =>
      Navigator.of(this).pushReplacement(MaterialPageRoute<T>(
          builder: builder,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog));
}
