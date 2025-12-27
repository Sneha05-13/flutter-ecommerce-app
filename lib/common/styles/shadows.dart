import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: SColors.darkGrey.withAlpha(26),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
    );

    static final horizontalProductShadow = BoxShadow(
    color: SColors.darkGrey.withAlpha(26),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
    );

}