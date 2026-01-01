import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RSingleAddress extends StatelessWidget {
  const RSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
                width: double.infinity,
                padding: const EdgeInsets.all(RSizes.md),
                showBorder: true,
                backgroundColor: selectedAddress ? SColors.primary.withAlpha(128) : Colors.transparent,
                borderColor: selectedAddress 
                ? Colors.transparent
                : dark
                    ? SColors.darkerGrey
                    : SColors.grey,
                margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
                child: Stack(
                  children: [
                    Positioned(
                      right: 5,
                      top: 0,
                      child: Icon(
                      selectedAddress ? Iconsax.tick_circle5 : null,
                      color: selectedAddress
                         ? dark 
                             ? SColors.light
                             : SColors.dark
                          : null,
                    ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: RSizes.sm / 2),
                        const Text('(+123) 455 7892', maxLines: 1, overflow: TextOverflow.ellipsis),
                        const SizedBox(height: RSizes.sm / 2),
                        const Text('84562 Timmy Coves, South Liana, Maine, 87545, USA', softWrap: true,),
                      ],
                    ),
                  ],
                ),
              );
  }
}