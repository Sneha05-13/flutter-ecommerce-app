import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RBillingAddressSection extends StatelessWidget {
  const RBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Ecomm_app', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: RSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text('+92-542-7351956', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: RSizes.spaceBtwItems),
            Expanded(child: Text('South Liana, Maine, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        ),
      ],
    );
  }
}