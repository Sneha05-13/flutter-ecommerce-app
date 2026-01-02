import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SProductCardHorizontal extends StatelessWidget {
  const SProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [RShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(RSizes.productImageRadius),
        color: dark ? SColors.darkerGrey : SColors.softGrey,
      ),
      child: Row(
        children: [
          //--Thumbnail
          SRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(RSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                ///---Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: SRoundedImage(imageUrl: RImages.productImage1, applyImageRadius: true),
                ),
                
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
          
          //--Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: RSizes.sm, left: RSizes.sm),
              child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RProductTitleText(title: 'Blue Adidas Shoes here', smallSize: true),
                    SizedBox(height: RSizes.spaceBtwItems / 2),
                    SBrandTitleWithVerifiedIcon(title: 'Adidas'),
                  ],
                ),

               const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //--Pricing
                   const Flexible(child: SProductPriceText(price: '256.0 - 2536.0')),

                    //--add to cart button
                  Container(
                    decoration: const BoxDecoration(
                      color: SColors.dark,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(RSizes.cardRadiusMd),
                      bottomRight: Radius.circular(RSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                      width: RSizes.iconLg * 1.2,
                      height: RSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add, color: SColors.white)),
                    ),
                  ),
                  ], 
                ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}