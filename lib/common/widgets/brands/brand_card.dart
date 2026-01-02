import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard ({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isdark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      //---container design
                    onTap: onTap,
                      child:  SRoundedContainer(
                    padding: const EdgeInsets.all(RSizes.sm),
                    showBorder: showBorder,
                    backgroundColor: Colors.transparent,
                    child: Row(
                      children: [
                        //---Icon---
                        RCircularImage(
                                                isNetworkImage: false,
                                                image: RImages.clothIcon,
                                                backgroundColor: Colors.transparent,
                                                overlayColor: isdark ? SColors.white : SColors.black,
                                               ),
                       const SizedBox(width: RSizes.spaceBtwItems / 2),

                       //--Text
                       Expanded(
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                         const SBrandTitleWithVerifiedIcon(title: 'Adidas', brandTextSize: TextSizes.large),
                          Text(
                            '200 products',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                       ),
                       ),
                      ],
                    ),
                  ),
                  );
  }
}