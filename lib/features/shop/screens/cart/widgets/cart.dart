import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RCartScreen extends StatelessWidget {
  const RCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, _) => const SizedBox(height: RSizes.spaceBtwSections), 
            itemBuilder: (_, index) => Column(
              children: [
                RCartItem(),
                SizedBox(height: RSizes.spaceBtwItems),

                Row(
                  children: [
                    const SizedBox(width: 70),
                    //---Add Remove Buttons
                    RProductQuantityWithAddRemoval(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

