import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RCartItem extends StatelessWidget {
  const RCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //---Image
        SRoundedImage(
          imageUrl: RImages.productImage5,
          width: 50,
          height: 60,
          padding: const EdgeInsets.all(RSizes.sm),
          backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light,
          ),
          const SizedBox(width: RSizes.spaceBtwItems),
    
        //---Title, price, & Size
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SBrandTitleWithVerifiedIcon(title: 'Adidas'),
              const Flexible(child: RProductTitleText(title: 'Adidas Sports Shoes gjygvv kiuhgbh', maxLines: 1)),
           
              //---Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}