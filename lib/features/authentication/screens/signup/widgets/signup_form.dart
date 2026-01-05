import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce_app/services/auth_service.dart';

class RSignupForm extends StatefulWidget {
  const RSignupForm({super.key});

  @override
  State<RSignupForm> createState() => _RSignupFormState();
}

class _RSignupFormState extends State<RSignupForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;

  Future<void> signupUser() async {
    setState(() => loading = true);
    try {
      await AuthService.signUp(
        emailController.text.trim(),
        passwordController.text.trim(),
      );

      /// Signup success
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      Get.snackbar(
        'Signup Failed',
        e.toString(),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// Email
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: RTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: RTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwSections),

          /// Terms
          const RTermsAndConditionsCheckbox(),
          const SizedBox(height: RSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: loading ? null : signupUser,
              child: loading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text(RTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
