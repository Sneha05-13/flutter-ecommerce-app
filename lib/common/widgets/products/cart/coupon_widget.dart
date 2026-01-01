import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RCouponCode extends StatelessWidget {
  const RCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? SColors.dark : SColors.white,
      padding: const EdgeInsets.only(top: RSizes.sm, bottom: RSizes.sm, right: RSizes.sm, left: RSizes.md),
      child: Row(
        children: [
          //---TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          //---Button
          SizedBox(
            width: 80, 
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? SColors.white.withAlpha(128) : SColors.dark.withAlpha(128),
                backgroundColor: Colors.grey.withAlpha(51),
                side: BorderSide(color: Colors.grey.withAlpha(26)),
              ), 
              child: Text('Apply'))),
        ],
      ),
    );
  }
}