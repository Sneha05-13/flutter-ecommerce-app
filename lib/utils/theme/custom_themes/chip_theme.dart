import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ChipThemes {
  ChipThemes._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: SColors.grey.withAlpha((0.6 * 255).toInt()),
    labelStyle: const TextStyle(color: SColors.black),
    selectedColor: SColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: SColors.darkGrey,
    labelStyle: TextStyle(color: SColors.white),
    selectedColor: SColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: SColors.white,
  );
  
}