import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/rating_progress_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/user_review_card.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RProductReviewsScreen extends StatelessWidget {
  const RProductReviewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //---AppBar
      appBar: SAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //---Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ratings and reviews are verified and from people who use the same type of device that you use."),
            const SizedBox(height: RSizes.spaceBtwItems),

            //---Overall Product Ratings
            ROverallProductRating(),
            SRatingBarIndicator(rating: 3.5),
            Text("12,611", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: RSizes.spaceBtwSections),

            //--User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}



