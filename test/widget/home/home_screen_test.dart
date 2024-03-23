import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/inject/injector.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/presentation/home/home_screen.dart';
import 'package:marvel_app/utils/strings.dart';

import '../utils.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  Future<void> init() async {
    await Injector.setup();
  }

  Widget getWidget() => MainApp(
        initScreen: HomeScreen(),
      );

  setUp(init);
  group("initialization", () {
    uiTest('HomeScreen has a title', getWidget(), (WidgetTester tester) async {
      // Create the widget by telling the tester to build it.
      final titleFinder = find.text(Strings.homeTitle);
      expect(titleFinder, findsOneWidget);
    });
  });
}
