import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RProductDetailScreen extends StatelessWidget{
  const RProductDetailScreen ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return const Scaffold(
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

                  //---Checkout Button

                  //---Description
                  
                  //---Reviews
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}