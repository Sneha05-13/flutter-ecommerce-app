import 'package:ecommerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RCategoryTab extends StatelessWidget {
  const RCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: Column(
              children: [
                //---Brands
                RBrandShowcase(images: [RImages.productImage4, RImages.productImage5, RImages.productImage6],),

                //---Products
                ],
            ),
            );
  }
}