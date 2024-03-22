import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:marvel_app/inject/app_injector.dart';

abstract class Injector {
  @protected
  KiwiContainer get container;

  Future<void> init();

  static late Injector _injector;

  // For use from classes trying to get top-level
  // dependencies such as ChangeNotifiers or BLOCs
  static T Function<T>([String]) resolve = _injector.container.resolve;

  static Future<void> setup({Injector? instance}) async {
    _injector = instance ?? AppInjector.instance();
    await _injector.init();
  }
}
