import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [RShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(RSizes.productImageRadius),
        color: dark ? SColors.darkerGrey : SColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail, Wishlist, Discount Tag
          SRoundedContainer(
            height: 100,
            padding: const EdgeInsets.all(RSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                ///---Thumbnail Image
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}