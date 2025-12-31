import 'package:ecommerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RCategoryTab extends StatelessWidget {
  const RCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
     children: [
      Padding(
            padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: Column(
              children: [
                //---Brands
                RBrandShowcase(images: [RImages.productImage4, RImages.productImage5, RImages.productImage6]),
                RBrandShowcase(images: [RImages.productImage7, RImages.productImage8, RImages.productImage9]),

                //---Products
                RSectionHeading(title: 'You might like', onPressed: (){}),
                const SizedBox(height: RSizes.spaceBtwItems),

                SGridLayout(itemCount: 4, itemBuilder: (_, index) => const SProductCardVertical()),
                const SizedBox(height: RSizes.spaceBtwSections),
                ],
            ),
            ),
     ],
            );
  }
}