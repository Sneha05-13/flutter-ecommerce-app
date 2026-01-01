import 'package:ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RProductAttributes extends StatelessWidget {
  const RProductAttributes ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //---Selected Attribute pricing & description
        SRoundedContainer(
          padding: const EdgeInsets.all(RSizes.md),
          backgroundColor: dark ? SColors.darkGrey : SColors.grey,
          child: Column(
            children: [
              //---Title, price and stock status
              Row(
                children: [
                 const RSectionHeading(title: 'Variation', showActionButton: true),
                 const SizedBox(width: RSizes.spaceBtwItems),

                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                            Row(
                           children: [
                     const RProductTitleText(title: 'Price', smallSize: true),
                  //--Actual price
                  Text(
                    '\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                  ),
                  const SizedBox(width: RSizes.spaceBtwItems),

                  //--Sale price
                 const SProductPriceText(price: '20'),
                ],
              ),
              //---Stock
              Row(
                children: [
                  const RProductTitleText(title: 'Stock', smallSize: true),
                  Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                ],
              ),
            ],
          ),
            ],
          ),

          //---Variation Description
          const RProductTitleText(
            title: 'This is the Description of the product and it can go upto max 4 lines.',
            smallSize: true,
            maxLines: 4,
          ),
            ],
        ),
        ),
        const SizedBox(height: RSizes.spaceBtwItems),     

        ///---Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RSectionHeading(title: 'Colors'),
            const SizedBox(height: RSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                RChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                RChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                RChoiceChip(text: 'Red', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8,
              children: [
                const RSectionHeading(title: 'Sizes', showActionButton: false,),
                const SizedBox(height: RSizes.spaceBtwItems / 2),
                RChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                RChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                RChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
                
              ],
            ),
          ],
        ),
      ],
    );
  }
}