import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/services/auth_service.dart';
import 'package:ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(RSizes.md),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: RSizes.spaceBtwSections),
            SizedBox(
              height: RSizes.buttonheight,
              width: RSizes.buttonWidth,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthService.resetPassword(emailController.text.trim());
                  Get.to(() => const ResetPassword());
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
