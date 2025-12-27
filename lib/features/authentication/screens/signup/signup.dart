import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsetsGeometry.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
            /// Title
            Text(RTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: RSizes.spaceBtwSections),

             /// Form 
              RSignupForm(),
              const SizedBox(height: RSizes.spaceBtwSections),

             /// Divider
             RFormDivider(dividerText: RTexts.orSignInWith.capitalize!),
             const SizedBox(height: RSizes.spaceBtwSections),

             /// Social Buttons
             const RSocialButtons(),
             
            ],
          ),
          ),
      ),
    );
  }
}