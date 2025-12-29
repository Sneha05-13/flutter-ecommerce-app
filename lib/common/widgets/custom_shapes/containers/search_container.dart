import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RSearchContainer extends StatelessWidget {
  const RSearchContainer({
    super.key,
    required this.text, 
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
    child:  Padding(
                    padding: padding,
                    child: Container(
                      width: SDeviceUtils.getScreenWidth(context),
                      padding: const EdgeInsets.all(RSizes.md),
                      decoration: BoxDecoration(
                      color: showBackground 
                      ? dark 
                      ? SColors.dark : SColors.light : Colors.transparent,
                      borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
                      border: showBorder ? Border.all(color: SColors.grey) : null,
                    ),
                      child: Row(
                      children: [
                        Icon(icon, color: dark ? SColors.darkerGrey : Colors.grey),
                        const SizedBox(width: RSizes.spaceBtwItems),
                        Text(text, style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  ),
    );
  }
}
 