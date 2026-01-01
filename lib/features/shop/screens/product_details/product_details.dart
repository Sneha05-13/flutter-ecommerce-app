import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_reviews/product_review.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class RProductDetailScreen extends StatelessWidget{
  const RProductDetailScreen ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---product image slider
            RProductImageSlider(),

            ///---product details
            Padding(
              padding: EdgeInsets.only(right: RSizes.defaultSpace, left: RSizes.defaultSpace, bottom: RSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share Button
                  SRatingAndShare(),

                  //---Price, Title, Stock, & Brand
                  RProductMetaData(),

                  //---Attributes
                  RProductAttributes(),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  //---Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  //---Description
                  const RSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for the product seen. There are more things that can be added',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                  ),
                  
                  //---Reviews
                  const Divider(),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const RSectionHeading(title: 'Reviews(199)', showActionButton: false),
                     IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const RProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}