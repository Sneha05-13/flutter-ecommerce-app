import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:ecommerce_app/common/widgets/products/sortable/sortabel_products.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: Text('Populat products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              //--Brand Detail
              RBrandCard(showBorder: true),
              SizedBox(height: RSizes.spaceBtwSections),
              RSortableProducts(),
          ],
          ),
      ),
      ),
    );
  }
}