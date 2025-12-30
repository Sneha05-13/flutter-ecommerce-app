import 'package:ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RBrandShowcase extends StatelessWidget {
  const RBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
                  showBorder: true,
                  borderColor: SColors.darkGrey,
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.all(RSizes.md),
                  margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      //---Brand with Products Count
                      const RBrandCard(showBorder: false),
                      //---Brand Top 3 Product images
                      Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
                    ],
                   ),
                  );
         
  }


Widget brandTopProductImageWidget(String image, context) {
  return  Expanded(
     child: SRoundedContainer(
     height: 100,
     margin: const EdgeInsets.only(right: RSizes.sm),
     padding: const EdgeInsets.all(RSizes.md),
     backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light,
     child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
}