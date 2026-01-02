import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// Header 
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  //---AppBar
                  SHomeAppBar(),
                  SizedBox(height: RSizes.spaceBtwSections,),

                  //---SearchBar
                  RSearchContainer(text: 'Search in Store'),
                  SizedBox(height: RSizes.spaceBtwSections),

                  //---Categories
                  Padding(
                    padding: EdgeInsets.only(left: RSizes.defaultSpace),
                    child: Column(
                      children: [
                        //---Heading
                       RSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: SColors.white),
                       SizedBox(height: RSizes.spaceBtwItems),

                        // Categories
                        RHomeCategory(),
                      ],
                    ),
                   ),

                   const SizedBox(height: RSizes.spaceBtwSections),
                 ],
              ),
            ),

            ///-----Body-----
            Padding(
              padding: EdgeInsets.all(RSizes.defaultSpace),
             child: Column(
              children: [
                ///---Promo slider
                 RPromoSlider(banners: [RImages.promoBanner1, RImages.promoBanner2, RImages.promoBanner3]),
                 SizedBox(height: RSizes.spaceBtwSections),

                 //--heading
                 RSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                 const SizedBox(height: RSizes.spaceBtwItems),

                 
                 ///---Popular products
                 SGridLayout(itemCount: 4, itemBuilder: (_, index) => const SProductCardVertical()),
              ],
            ),
            ),
          ], 
        ),
      ),
    );
  }
}


