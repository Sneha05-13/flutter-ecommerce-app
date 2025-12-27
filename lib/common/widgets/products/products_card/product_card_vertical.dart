import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
                const SRoundedImage(imageUrl: RImages.productImage1, applyImageRadius: true),

                //---Sale Tag
                Positioned(
                  top: 12,
                  child: SRoundedContainer(
                  radius: RSizes.sm,
                  backgroundColor: SColors.secondary.withAlpha(204),
                  padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.black)
                  ),
                ),
                ),
                //---Favorite Icon Button
                const Positioned(
                  top: 0,
                  right: 0, 
               child:  RCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwItems / 2),
          
          //---Details
         Padding(
          padding: const EdgeInsets.only(left: RSizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RProductTitleText(title: 'Adidas Shoes', smallSize: true),
              SizedBox(height: RSizes.spaceBtwItems / 2),
              Row(
                children: [
                  Text('Adidas', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                ],
              )
            ],
          ),
         ),
        ],
      ),
    );
  }
}