import 'package:ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_price_text.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RCartItems extends StatelessWidget {
  const RCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, _) => const SizedBox(height: RSizes.spaceBtwSections), 
      itemBuilder: (_, index) => Column(
        children: [
          //--cart items
          const RCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: RSizes.spaceBtwItems),

          //---Add remove button with total price
          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //---Extra Space
                  SizedBox(width: 70),
                  //---Add Remove Buttons
                  RProductQuantityWithAddRemovalButton(),
               ],
              ),
             SProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
