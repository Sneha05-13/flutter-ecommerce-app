import 'package:ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: RImages.onBoardingImage1, 
                title: RTexts.onboardingTitle1, 
                subTitle: RTexts.onboardingSubTitle1
                ),
              OnBoardingPage(
                image: RImages.onBoardingImage2, 
                title: RTexts.onboardingTitle2, 
                subTitle: RTexts.onboardingSubTitle2,
                ),
              OnBoardingPage(
                image: RImages.onBoardingImage3, 
                title: RTexts.onboardingTitle3, 
                subTitle: RTexts.onboardingSubTitle3,
                ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),
          
          /// Dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button 
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

