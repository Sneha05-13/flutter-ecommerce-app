import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.black : SColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(RSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: RSizes.spaceBtwItems),
                  RSearchContainer(text: 'Search in store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                  SizedBox(height: RSizes.spaceBtwSections),

                  //---Featured Brands
                  RSectionHeading(title: 'Featured Brands', onPressed: (){}),
                  const SizedBox(height: RSizes.spaceBtwItems / 1.5),

                  SRoundedContainer(
                    padding: const EdgeInsets.all(RSizes.sm),
                    showBorder: true,
                    backgroundColor: Colors.transparent,
                    child: Row(
                      children: [
                        //---Icon---
                       RCircularImage(
                        isNetworkImage: false,
                        image: RImages.clothIcon,
                        backgroundColor: Colors.transparent,
                        overlayColor: SHelperFunctions.isDarkMode(context) ? SColors.white : SColors.black,
                       ),
                       const SizedBox(width: RSizes.spaceBtwItems / 2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      }, body: Container()),
    );
  }
}