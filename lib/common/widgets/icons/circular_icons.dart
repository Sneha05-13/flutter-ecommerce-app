import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RCircularIcon extends StatelessWidget {
  const RCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = RSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
   return Container(
    width: width,
    height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        : SHelperFunctions.isDarkMode(context)
        ? SColors.black.withAlpha(230)
        : SColors.white.withAlpha(230),
      borderRadius: BorderRadius.circular(100),
    ),
    child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
   );
  }
}