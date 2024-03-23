import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void uiTest(
  String description,
  Widget widget,
  WidgetTesterCallback callback, {
  bool skip = false,
  Timeout? timeout,
  Duration? initialTimeout,
  bool semanticsEnabled = true,
  TestVariant<Object?> variant = const DefaultTestVariant(),
}) {
  testWidgets(
    description,
    (WidgetTester tester) async {
      await _asyncWrapper(tester, widget);
      await callback(tester);
    },
    skip: skip,
    semanticsEnabled: semanticsEnabled,
    variant: variant,
    timeout: timeout,
  );
}

Future<void> _asyncWrapper(WidgetTester tester, Widget widget) async {
  await tester.runAsync(() async {
    await tester.pumpWidget(widget);
  });
}
