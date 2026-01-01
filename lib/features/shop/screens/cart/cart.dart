import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RCartScreen extends StatelessWidget {
  const RCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),

          ////---Item in cart
          child: RCartItems(),
        ),

        //--Checkout Button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const RCheckoutScreen()), child: const Text('Checkout \$256')),   
        ),
    );
  }
}


