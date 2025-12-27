 import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RSignupForm extends StatelessWidget {
  const RSignupForm ({
    super.key,
  });


  @override 
  Widget build(BuildContext context) {
 
          return Form(
            child: Column(
              children: [
                /// First & last Name
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: RTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                   ),
                   ),
                   const SizedBox(width: RSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration (labelText: RTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                   ),
                   ),
                  ],
                ),
                    const SizedBox(height: RSizes.spaceBtwInputFields),
                    /// Username
                    TextFormField(
                    expands: false,
                    decoration: const InputDecoration (labelText: RTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
                   ),
                     const SizedBox(height: RSizes.spaceBtwInputFields),

                   /// Email
                   TextFormField(
                    expands: false,
                    decoration: const InputDecoration (labelText: RTexts.email, prefixIcon: Icon(Iconsax.direct)),
                   ),

                     const SizedBox(height: RSizes.spaceBtwInputFields),
                   /// Phone Number
                   TextFormField(
                    expands: false,
                    decoration: const InputDecoration (labelText: RTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
                   ),
                   const SizedBox(height: RSizes.spaceBtwInputFields),

                   /// Password
                   TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: RTexts.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                   ),
                   const SizedBox(height: RSizes.spaceBtwSections),

                   /// Terms & Conditions Checkbox
                   const  RTermsAndConditionsCheckbox(),
                   const SizedBox(height: RSizes.spaceBtwSections),

                   /// Sign Up Button
                   SizedBox(width: double.infinity, 
                   child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()), 
                    child: const Text(RTexts.createAccount)
                    )
                  ),
              ],
             ),
             );
  }
}