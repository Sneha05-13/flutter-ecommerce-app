import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RProductImageSlider extends StatelessWidget {
  const RProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return RCurvedEdgeWidget(
              child: Container(
                color: dark ? SColors.darkerGrey : SColors.light,
                child: Stack(
                  children: [
                    //--Main Large Logo
                    const SizedBox(height: 400, child: Padding(
                      padding: EdgeInsets.all(RSizes.productImageRadius * 2),
                      child: Center(child: Image(image: AssetImage(RImages.productImage1))),
                    ),
                   ),

                   //---Image Slider
                   Positioned(
                    right: 0,
                    bottom: 30,
                    left: RSizes.defaultSpace,
                    child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        itemCount: 6, 
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        separatorBuilder: (_, _) => const SizedBox(width: RSizes.spaceBtwItems), 
                        itemBuilder: (_, index) => SRoundedImage(
                          width: 80,
                          backgroundColor: dark ? SColors.dark : SColors.white,
                          border: Border.all(color: SColors.primary),
                          padding: const EdgeInsets.all(RSizes.sm),
                          imageUrl: RImages.productImage3,
                        ),
                        ),
                    ),
                    ),
                    //--Appbar icons
                    SAppBar(
                      showBackArrow: true,
                      actions: [RCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
                    ),
                  ],
                ),
              ),
            );
  }
}