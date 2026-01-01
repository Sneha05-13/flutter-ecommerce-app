import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RBillingPaymentSection extends StatelessWidget {
  const RBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: RSizes.spaceBtwItems / 2),
        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SColors.light : SColors.white,
              padding: const EdgeInsets.all(RSizes.sm),
              child: const Image(image: AssetImage(RImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: RSizes.spaceBtwItems / 2),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}