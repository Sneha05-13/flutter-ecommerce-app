import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';


class AppTheme {
  AppTheme._();

   static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextThemes.lightTextTheme,
    chipTheme: ChipThemes.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppbarThemes.lightAppbarTheme,
    checkboxTheme: CheckboxThemes.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemes.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemes.lightAppbarTheme,
    outlinedButtonTheme: OutlinedButtonThemes.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemes.lightInputDecorationTheme,

     );

   static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TextThemes.darkTextTheme,
    chipTheme: ChipThemes.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppbarThemes.darkAppbarTheme,
    checkboxTheme: CheckboxThemes.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemes.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemes.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemes.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemes.darkInputDecorationTheme,
   );
}


