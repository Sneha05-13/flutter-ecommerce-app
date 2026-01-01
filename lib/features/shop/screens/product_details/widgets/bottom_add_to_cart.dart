import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RBottomAddToCart extends StatelessWidget {
  const RBottomAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace, vertical: RSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? SColors.darkerGrey : SColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(RSizes.cardRadiusLg),
          topRight: Radius.circular(RSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: SColors.darkGrey,
                width: 40,
                height: 40,
                color: SColors.white,
                ),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(width: RSizes.spaceBtwItems),
            RCircularIcon(
                icon: Iconsax.add,
                backgroundColor: SColors.black,
                width: 40,
                height: 40,
                color: SColors.white,
                ),
            ],
          ),
          ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(RSizes.md),
              backgroundColor: SColors.black,
              side: const BorderSide(color: SColors.black),
            ),
            child: const Text('Add to Cart'),
            ),
        ],
      ),
    );
  }
}