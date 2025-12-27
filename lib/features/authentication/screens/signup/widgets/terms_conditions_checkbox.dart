import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';

class RTermsAndConditionsCheckbox extends StatelessWidget{
  const RTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
                    children: [
                      SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(width: RSizes.spaceBtwItems),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(text: '${RTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: '${RTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? SColors.white : SColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? SColors.white : SColors.primary,
                          )),
                          TextSpan(text: '${RTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: RTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? SColors.white : SColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? SColors.white : SColors.primary,
                          )),
                        ])
                      ),
                    ],
                   );
  }
}