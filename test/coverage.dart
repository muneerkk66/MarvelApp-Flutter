import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import "package:path/path.dart" show dirname;
import 'package:marvel_app/core/logging.dart' as l;

const minCoverage = 80;
const modules = ["lib/blocs", "lib/services"];

Future<void> main() async {
  String path =
      '${dirname(Platform.script.toString())}/coverage/index-sort-l.html';
  if (path.startsWith("file://")) {
    path = path.substring(7);
  }
  final coverage = await File(path).readAsString();

  test("Code Coverage", () {
    final Document document = parse(coverage);
    final List<Element> elements =
        document.body!.getElementsByClassName("coverFile");
    int modulesDetected = 0;
    double coverageTotal = 0.0;
    elements.forEach((Element e) {
      final String module = (e.children.first.nodes.first as Text).data;
      if (modules.contains(module)) {
        final String coverageString =
            (e.parent!.nodes.elementAt(5).nodes.first as Text).data;
        if (coverageString.endsWith("%")) {
          modulesDetected++;
          coverageTotal += double.parse(
              coverageString.substring(0, coverageString.length - 2));
        }
      }
    });
    final actualCoverage = coverageTotal / modulesDetected;
    var log =
        "Expected Coverage: $minCoverage%, Actual Coverage: $actualCoverage%";

    if (modules.length > modulesDetected) {
      log += "\nMissed Modules ${modules.length - modulesDetected}";
    }
    l.log(message: log);
    expect(actualCoverage, greaterThanOrEqualTo(minCoverage));
  });
}
