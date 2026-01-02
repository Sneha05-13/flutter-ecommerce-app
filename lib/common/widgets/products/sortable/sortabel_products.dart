import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RSortableProducts extends StatelessWidget{
  const RSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///---DropDown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort)
          ),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
            .map((option) => DropdownMenuItem( value: option, child: Text(option)))
            .toList(),
        ),
        const SizedBox(height: RSizes.spaceBtwSections),
    
        //---Products
        SGridLayout(itemCount: 8, itemBuilder: (_, index) => const SProductCardVertical()),
      ],
    );
  }
}