import 'package:flutter/material.dart';

abstract class GradientColors {
  static const primary = [
    Color(0xFF822FA3),
    Color(0xFFEF5984),
    Color(0xFFFF3F5C)
  ];
}

abstract class AppColors {
  static const primary = Color(0xFF202020);
  static const primaryVariant = Color(0xFF121212);
  static const colorOnPrimary = Color(0xDEFFFFFF);
  static const secondary = Color(0xFFFF6363);
  static const colorOnSecondary = Color(0xFF212121);
  static const surface = Color(0xFF323232);
  static const colorOnSurface = Color(0xFFECECEC);
}

abstract class Gradients {
  static const darkGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    colors: [AppColors.surface, Colors.transparent],
  );
}
