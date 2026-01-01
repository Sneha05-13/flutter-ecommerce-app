import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ROrderListItems extends StatelessWidget {
  const ROrderListItems ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      separatorBuilder: (_, index) => const SizedBox(height: RSizes.spaceBtwItems,),
      itemBuilder: (_, index) => SRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(RSizes.md),
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //--Row 1
            Row(
              children: [
                //--Icon
                Icon(Iconsax.ship),
                SizedBox(width: RSizes.spaceBtwItems / 2),
      
                //---Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: SColors.primary, fontWeightDelta: 1),
                        ),
                      Text('07 Nov 2025', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                //---Icon 
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34)),
              ],
            ),
            const SizedBox(height: RSizes.spaceBtwItems),
      
            //--- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //--Icon
                     const  Icon(Iconsax.tag),
                     const  SizedBox(width: RSizes.spaceBtwItems / 2),
                  
                      //---Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#52hv87]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Row(
                    children: [
                      //--Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: RSizes.spaceBtwItems / 2),
                  
                      //---Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('02 Oct 2025', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}