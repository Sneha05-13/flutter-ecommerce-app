import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(), 
      right: RSizes.defaultSpace, 
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), 
      child: const Text('Skip'),
      ),
      );
  }
}