import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:lottie/lottie.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
    });

    final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
                padding: const EdgeInsets.all(RSizes.defaultSpace),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    image,
                    width: SHelperFunctions.screenWidth()* 0.8,
                    height: SHelperFunctions.screenHeight() * 0.6,
                    fit: BoxFit.contain,
                    repeat: true,
                     ),

                     const SizedBox(height: RSizes.spaceBtwItems,),
                     Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
                     ),
                     const SizedBox(height: RSizes.spaceBtwItems,),
                     Text(subTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,
                     ),
                ],
              ),
              ),
    );
  }
}