import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget{
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
            const CircleAvatar(backgroundImage: AssetImage(RImages.userProfileImage1)),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
         ],
        ),
        const SizedBox(width: RSizes.spaceBtwItems),

        //---Reviews
        Row(
          children: [
            const SRatingBarIndicator(rating: 4),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text('01 Nov 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intutive. I am able to navigate and make purchases seamlessly.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
        ),
        const SizedBox(height: RSizes.spaceBtwItems),
        //--company reviews
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Padding(
            padding: EdgeInsetsGeometry.all(RSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ecomm Store', style: Theme.of(context).textTheme.titleMedium),
                    Text('02 nov 2025', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: RSizes.spaceBtwItems),
                ReadMoreText(
                  'The user interface of the app is quite intutive. I am able to navigate and make purchases seamlessly.',
                   trimLines: 2,
                   trimMode: TrimMode.Line,
                   trimExpandedText: 'show less',
                   trimCollapsedText: 'show more',
                   moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                   lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: RSizes.spaceBtwSections),
      ]
    );
  }
}