import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/core/platform_meta.dart';
import 'package:marvel_app/main.dart';
import 'package:marvel_app/presentation/shared/touch_effects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../utils.dart';
import 'ripple_test.mocks.dart';

@GenerateMocks([PlatformMeta])
void main() {
  final androidPlatform = MockPlatformMeta();
  final iosPlatform = MockPlatformMeta();

  void init() {
    when(androidPlatform.isAndroid).thenReturn(true);
    when(iosPlatform.isAndroid).thenReturn(false);
    when(androidPlatform.isIos).thenReturn(false);
    when(iosPlatform.isIos).thenReturn(true);
  }

  setUp(() => init());

  Widget getWidget(PlatformMeta platform) => MainApp(
        initScreen: RippleEffect(
          platform: platform,
          child: Text("Click"),
        ),
      );
  group("structure", () {
    uiTest('test material widget is added when platform is android',
        getWidget(androidPlatform), (WidgetTester tester) async {
      // Create the widget by telling the tester to build it.
      final titleFinder = find.text("Click");
      expect(find.byWidgetPredicate((widget) => widget is Material),
          findsOneWidget);
      expect(titleFinder, findsOneWidget);
    });
    uiTest('test gesture detector widget is added when platform is ios',
        getWidget(iosPlatform), (WidgetTester tester) async {
      // Create the widget by telling the tester to build it.
      final titleFinder = find.text("Click");
      expect(find.byWidgetPredicate((widget) => widget is GestureDetector),
          findsOneWidget);

      expect(titleFinder, findsOneWidget);
    });
  });

  group("appearance", () {
    uiTest('android widget default appearance is accurate',
        getWidget(androidPlatform), (WidgetTester tester) async {
      final root = find.byWidgetPredicate((widget) => widget
          is Material); // Create the widget by telling the tester to build it.
      expect(root, findsOneWidget);
      final child1 = find.descendant(
          of: root,
          matching: find.byWidgetPredicate((widget) => widget is InkWell));
      expect(child1, findsOneWidget);
      final subchild1 =
          find.descendant(of: child1, matching: find.text("Click"));
      expect(subchild1, findsOneWidget);
    });
  });
}
