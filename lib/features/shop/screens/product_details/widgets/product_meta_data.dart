import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RProductMetaData extends StatelessWidget {
  const RProductMetaData ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //---price & sale 
        Row(
          children: [
            //--sale tag
            SRoundedContainer(
                  radius: RSizes.sm,
                  backgroundColor: SColors.secondary.withAlpha(204),
                  padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.black)
                  ),
                ),
              const SizedBox(width: RSizes.spaceBtwItems),


              //---price
              Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
              const SizedBox(width: RSizes.spaceBtwItems),
              SProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(width: RSizes.spaceBtwItems / 1.5),

        //--title
        const RProductTitleText(title: 'the given is something to buy'),
        const SizedBox(width: RSizes.spaceBtwItems / 1.5),

        //--Stock Status
        Row(
          children: [
        const RProductTitleText(title: 'stock'),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
          ),
          const SizedBox(width: RSizes.spaceBtwItems),

          //--Brand
          Row(
            children: [
              RCircularImage(
                image: RImages.cosmeticsIcon,
                width: 32,
                height: 32,
                overlayColor: darkMode ? SColors.white : SColors.black,
              ),
              SBrandTitleWithVerifiedIcon(title: 'Adidas', brandTextSize: TextSizes.medium),
            ],
          ),
      ],
    );
  }
}