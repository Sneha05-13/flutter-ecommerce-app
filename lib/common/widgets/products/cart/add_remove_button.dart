import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RProductQuantityWithAddRemoval extends StatelessWidget {
  const RProductQuantityWithAddRemoval({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: RSizes.md,
          color: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.black,
          backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkGrey : SColors.light,
        ),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: RSizes.spaceBtwItems),
        
        RCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: RSizes.md,
          color: SColors.white,
          backgroundColor: SColors.primary,
        ),
      ],
    );
  }
}

