import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.close)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(RSizes.md),
        child: Column(
          children: [
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'New Password'),
            ),
            const SizedBox(height: RSizes.spaceBtwSections),
            SizedBox(
              height: RSizes.buttonheight,
              width: RSizes.buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar('Success', 'Password reset link sent!');
                  Get.back();
                },
                child: const Text('Done'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
