import 'package:ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
 Widget build(BuildContext context) {
  final controller = OnBoardingController.instance;

return Positioned(
            bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: RSizes.defaultSpace,
             child: SmoothPageIndicator(
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
               count: 3,
               effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotColor: Theme.of(context).dividerColor,
                dotHeight: 6
                ),
             ),
          );
}
}