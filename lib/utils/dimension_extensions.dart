import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension BuildContextDimension on BuildContext {
  MediaQueryData info() => MediaQuery.of(this);

  double get height => info().size.height;

  double get width => info().size.width;

  double percentHeight(double percent) => height * percent;

  double percentWidth(double percent) => width * percent;
}
