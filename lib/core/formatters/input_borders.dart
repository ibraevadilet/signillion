import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';

class AppInputBorders {
  static const OutlineInputBorder
      outlineBorderColor100Black101820Width1Radius12 = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.color100Black101820,
      width: 1,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static const OutlineInputBorder
      outlineBorderColor10Grey004646Width1Radius12 = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.color10Grey004646,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
  static const OutlineInputBorder
      outlineBorderColor100Black101820Width1Radius12RIGHT = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.color100Black101820,
      width: 1,
    ),
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
  );
  static const OutlineInputBorder
      outlineBorderColor10Grey004646Width1Radius12RIGHT = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.color10Grey004646,
      width: 1,
    ),
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
  );
}
