import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RCheckoutScreen extends StatelessWidget {
  const RCheckoutScreen ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--Items in cart
            const RCartItems(showAddRemoveButtons: false),
            const SizedBox(height: RSizes.spaceBtwSections),

            //--Coupon TextField
            RCouponCode(),
            const SizedBox(height: RSizes.spaceBtwSections),

            //--Billing Section
            SRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(RSizes.md),
              backgroundColor: dark ? SColors.black : SColors.white,
              child: Column(
                children: [
                  //---Pricing
                  RBillingAmountSection(),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  //---Divider
                  const Divider(),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  //--Payment Methods
                  RBillingPaymentSection(),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  //--Address
                  RBillingAddressSection(),
                ],
              ),
            ),
          ],
        ),
      ),
       
       //--Checkout Button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(
          () => SuccessScreen(
            image: RImages.staticSuccessIllustration,
            title: 'Payment Success!',
            subTitle: 'Your item will be shipped soon!',
            onPressed: () => Get.offAll(() => const NavigationMenu()),
           ),
          ), 
          child: const Text('Checkout \$256.0')),   
        ),
    );
  }
}

