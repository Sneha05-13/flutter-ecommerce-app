import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:lottie/lottie.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key, required this.image, required this.title, required this.subTitle, required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
             Lottie.asset(image, width: SHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: RSizes.spaceBtwSections),
              
              // Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: RSizes.spaceBtwItems),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: RSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: onPressed, child: const Text(RTexts.tContinue))),

            ],
          ),
        ),
      ),
    );
  }
}