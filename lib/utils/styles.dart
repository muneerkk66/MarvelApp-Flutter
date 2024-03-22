import 'package:flutter/material.dart';
import 'package:marvel_app/utils/colors.dart';
import 'package:marvel_app/utils/dimensions.dart';

abstract class FontConstants {
  static const defaultFamily = 'Cabin';
}

abstract class TextStyles {
  static const TextStyle textBold = TextStyle(
    letterSpacing: 0.37,
    fontFamily: FontConstants.defaultFamily,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.text_large,
    height: 1.23,
    color: AppColors.colorOnPrimary,
  );

  static const TextStyle textNormal = TextStyle(
    letterSpacing: 0.37,
    fontFamily: FontConstants.defaultFamily,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.text_normal,
    height: 1.23,
    color: AppColors.colorOnPrimary,
  );
}
