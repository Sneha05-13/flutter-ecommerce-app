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
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
    child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
                    child: Container(
                      width: SDeviceUtils.getScreenWidth(context),
                      padding: const EdgeInsets.all(RSizes.md),
                      decoration: BoxDecoration(
                      color: showBackground ? dark ? SColors.black : SColors.white : Colors.transparent,
                      borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
                      border: showBorder ? Border.all(color: SColors.grey) : null,
                    ),
                      child: Row(
                      children: [
                        Icon(icon, color: SColors.grey),
                        const SizedBox(width: RSizes.spaceBtwItems),
                        Text(text, style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  ),
    );
  }
}
 